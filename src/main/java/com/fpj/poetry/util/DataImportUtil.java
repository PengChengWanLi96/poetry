package com.fpj.poetry.util;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.*;

public class DataImportUtil {

    private static final ObjectMapper objectMapper = new ObjectMapper();

    private static final Map<String, Integer> CATEGORY_MAP = new HashMap<>();
    private static final Map<String, String> CATEGORY_DYNASTY = new HashMap<>();
    
    static {
        CATEGORY_MAP.put("唐诗", 1);
        CATEGORY_MAP.put("宋词", 2);
        CATEGORY_MAP.put("诗经", 3);
        CATEGORY_MAP.put("楚辞", 4);
        CATEGORY_MAP.put("元曲", 5);
        CATEGORY_MAP.put("论语", 6);
        CATEGORY_MAP.put("四书五经", 7);
        CATEGORY_MAP.put("千家诗", 8);
        CATEGORY_MAP.put("纳兰性德", 9);
        CATEGORY_MAP.put("曹操诗集", 10);
        CATEGORY_MAP.put("幽梦影", 11);
        CATEGORY_MAP.put("蒙学", 12);
        CATEGORY_MAP.put("五代的词", 13);
        
        CATEGORY_DYNASTY.put("唐诗", "唐");
        CATEGORY_DYNASTY.put("宋词", "宋");
        CATEGORY_DYNASTY.put("诗经", "先秦");
        CATEGORY_DYNASTY.put("楚辞", "先秦");
        CATEGORY_DYNASTY.put("元曲", "元");
        CATEGORY_DYNASTY.put("论语", "先秦");
        CATEGORY_DYNASTY.put("四书五经", "先秦");
        CATEGORY_DYNASTY.put("千家诗", "唐宋");
        CATEGORY_DYNASTY.put("纳兰性德", "清");
        CATEGORY_DYNASTY.put("曹操诗集", "三国");
        CATEGORY_DYNASTY.put("幽梦影", "清");
        CATEGORY_DYNASTY.put("蒙学", "宋");
        CATEGORY_DYNASTY.put("五代的词", "五代");
    }

    public static void main(String[] args) throws IOException {
        String basePath = System.getProperty("user.dir");
        String dataDir = basePath + "/data";
        
        File dir = new File(dataDir);
        File[] categories = dir.listFiles(File::isDirectory);
        
        if (categories == null || categories.length == 0) {
            System.out.println("未找到数据目录");
            return;
        }
        
        List<String> allSql = new ArrayList<>();
        allSql.add("-- 诗词数据初始化\n");
        
        int totalCount = 0;
        
        for (File category : categories) {
            String categoryName = category.getName();
            Integer categoryId = CATEGORY_MAP.get(categoryName);
            
            if (categoryId == null) {
                System.out.println("未知分类: " + categoryName);
                continue;
            }
            
            File[] files = category.listFiles((d, n) -> n.endsWith(".json"));
            if (files == null || files.length == 0) {
                continue;
            }
            
            int categoryCount = 0;
            for (File jsonFile : files) {
                String dynasty = CATEGORY_DYNASTY.getOrDefault(categoryName, categoryName);
                int count = generatePoetrySql(jsonFile, categoryId, categoryName, dynasty, basePath + "/src/main/resources/sql/data_" + categoryId + ".sql", categoryCount);
                categoryCount += count;
            }
            
            totalCount += categoryCount;
            System.out.println(categoryName + " 导入完成: " + categoryCount + " 条");
        }
        
        System.out.println("总计导入: " + totalCount + " 条诗词");
    }

    private static int generatePoetrySql(File jsonFile, int categoryId, String categoryName, String dynasty, String outputFile, int startIndex) throws IOException {
        System.out.println("处理文件: " + jsonFile.getAbsolutePath());
        
        String content = Files.readString(jsonFile.toPath(), StandardCharsets.UTF_8);
        JsonNode rootNode = objectMapper.readTree(content);

        List<String> sqlStatements = new ArrayList<>();
        int count = 0;

        for (JsonNode node : rootNode) {
            String title = escapeSql(getTextValue(node, "title"));
            String author = escapeSql(getTextValue(node, "author"));
            String rhythmic = escapeSql(getTextValue(node, "rhythmic"));
            
            StringBuilder contentBuilder = new StringBuilder();
            JsonNode paragraphs = node.path("content");
            if (paragraphs.isArray()) {
                for (int i = 0; i < paragraphs.size(); i++) {
                    if (i > 0) contentBuilder.append("\n");
                    contentBuilder.append(paragraphs.get(i).asText());
                }
            }
            String poetryContent = escapeSql(contentBuilder.toString());
            
            String chapter = escapeSql(getTextValue(node, "chapter"));
            String section = escapeSql(getTextValue(node, "section"));
            String prologue = escapeSql(getTextValue(node, "prologue"));
            
            JsonNode tagsNode = node.path("tags");
            String tags = "[]";
            if (tagsNode.isArray() && tagsNode.size() > 0) {
                tags = tagsNode.toString();
            }

            String uuid = UUID.randomUUID().toString();
            int isFeatured = (startIndex + count) < 10 ? 1 : 0;

            String sql = String.format(
                "INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (%d, '%s', '%s', '%s', '%s', '%s', '%s', '%s', %d);",
                categoryId, title, author, poetryContent, rhythmic, tags, uuid, dynasty, isFeatured
            );
            sqlStatements.add(sql);
            
            if (!chapter.isEmpty() || !section.isEmpty() || !prologue.isEmpty()) {
                String extSql = String.format(
                    "SET @poetry_id = LAST_INSERT_ID(); INSERT INTO poetry_ext (poetry_id, category_id, chapter, `section`, prologue) VALUES (@poetry_id, %d, '%s', '%s', '%s');",
                    categoryId, chapter, section, prologue
                );
                sqlStatements.add(extSql);
            }
            
            count++;
        }

        try (BufferedWriter writer = Files.newBufferedWriter(Path.of(outputFile), StandardCharsets.UTF_8)) {
            writer.write("-- " + categoryName + " 数据，共 " + count + " 条\n\n");
            for (String sql : sqlStatements) {
                writer.write(sql);
                writer.write("\n");
            }
        }

        return count;
    }

    private static String getTextValue(JsonNode node, String field) {
        JsonNode value = node.get(field);
        return value != null ? value.asText() : "";
    }

    private static String escapeSql(String str) {
        if (str == null) return "";
        return str.replace("'", "''").replace("\\\\", "\\\\\\\\");
    }
}
