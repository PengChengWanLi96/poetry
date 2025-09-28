package com.fpj.poetry.utils.email;

import java.util.Arrays;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class EmailUtilsTest {

    @Test
    void sendTextMail() {
        MailSenderInfo mailSenderInfo = new MailSenderInfo();
        //mailSenderInfo.setMailServerHost("apusic.net");
        mailSenderInfo.setMailServerHost("smtp.163.com");
        mailSenderInfo.setMailServerPort(25 + "");

        mailSenderInfo.setValidate(true);
//        mailSenderInfo.setFromAddress("fangpengjun@apusic.net");
//        mailSenderInfo.setUserName("fangpengjun@apusic.net");
//        mailSenderInfo.setPassword("apusic$1981");
//        mailSenderInfo.setToAddressList(Arrays.asList(new String[]{"fangpengjun@apusic.net"}));

        mailSenderInfo.setFromAddress("fangpj1981@163.com");
        mailSenderInfo.setUserName("fangpj1981@163.com");
        mailSenderInfo.setPassword("PRbNLedjnrEn6cKB");
        mailSenderInfo.setToAddressList(Arrays.asList(new String[]{"fangpj1981@163.com"}));

        mailSenderInfo.setContent("金蝶天燕ACP email 测试邮件");
        try {
            EmailUtils.sendTextMail(mailSenderInfo);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Test
    void sendHtmlMail() {
    }
}