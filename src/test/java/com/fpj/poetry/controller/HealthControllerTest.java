package com.fpj.poetry.controller;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@SpringBootTest
@AutoConfigureMockMvc
class HealthControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @Test
    void health_shouldReturnUpStatus() throws Exception {
        mockMvc.perform(get("/api/health"))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.code").value(200))
                .andExpect(jsonPath("$.data.status").exists())
                .andExpect(jsonPath("$.data.details").exists());
    }

    @Test
    void status_shouldReturnServiceStatus() throws Exception {
        mockMvc.perform(get("/api/health/status"))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.code").value(200))
                .andExpect(jsonPath("$.data.status").value("UP"))
                .andExpect(jsonPath("$.data.service").value("poetry"));
    }

    @Test
    void info_shouldReturnProcessDetails() throws Exception {
        mockMvc.perform(get("/api/health/info"))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.code").value(200))
                .andExpect(jsonPath("$.data.status").value("UP"))
                .andExpect(jsonPath("$.data.processId").exists())
                .andExpect(jsonPath("$.data.threadCount").exists())
                .andExpect(jsonPath("$.data.cpuUsage").exists())
                .andExpect(jsonPath("$.data.totalMemory").exists())
                .andExpect(jsonPath("$.data.usedMemory").exists())
                .andExpect(jsonPath("$.data.freeMemory").exists())
                .andExpect(jsonPath("$.data.javaVersion").exists())
                .andExpect(jsonPath("$.data.osName").exists());
    }

    @Test
    void db_shouldReturnDatabaseStatus() throws Exception {
        mockMvc.perform(get("/api/health/db"))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.code").value(200))
                .andExpect(jsonPath("$.data.status").exists());
    }

    @Test
    void disk_shouldReturnDiskStatus() throws Exception {
        mockMvc.perform(get("/api/health/disk"))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.code").value(200))
                .andExpect(jsonPath("$.data.status").exists())
                .andExpect(jsonPath("$.data.details.freeSpaceBytes").exists());
    }

    @Test
    void uptime_shouldReturnUptimeInfo() throws Exception {
        mockMvc.perform(get("/api/health/uptime"))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.code").value(200))
                .andExpect(jsonPath("$.data.uptimeMillis").exists())
                .andExpect(jsonPath("$.data.uptimeFormatted").exists());
    }

    @Test
    void memory_shouldReturnMemoryDetails() throws Exception {
        mockMvc.perform(get("/api/health/memory"))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.code").value(200))
                .andExpect(jsonPath("$.data.heap").exists())
                .andExpect(jsonPath("$.data.nonHeap").exists());
    }

    @Test
    void threads_shouldReturnThreadInfo() throws Exception {
        mockMvc.perform(get("/api/health/threads"))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.code").value(200))
                .andExpect(jsonPath("$.data.threadCount").exists())
                .andExpect(jsonPath("$.data.peakThreadCount").exists());
    }

    @Test
    void env_shouldReturnEnvironmentInfo() throws Exception {
        mockMvc.perform(get("/api/health/env"))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.code").value(200))
                .andExpect(jsonPath("$.data['java.version']").exists())
                .andExpect(jsonPath("$.data['os.name']").exists());
    }
}
