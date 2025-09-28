package com.fpj.poetry.utils.email;

import jakarta.mail.*;
import jakarta.mail.internet.*;
import java.util.Date;
import java.util.Properties;
import jakarta.activation.DataHandler;
import jakarta.activation.FileDataSource;

public class EmailUtils {

    /**
     * 以文本格式发送邮件
     *
     * @param mailInfo 待发送邮件信息
     * @throws Exception
     */
    public static void sendTextMail(MailSenderInfo mailInfo) throws Exception {
        mailInfo.setSubject("Apusic Alarm告警通知");
        MimeMessage mailMessage = initMimeMessage(mailInfo);
        // 设置邮件消息的主要内容
        String mailContent = mailInfo.getContent();
        mailMessage.setText(mailContent);
        if (mailInfo.getAttachFileNames() != null) {
            MimeMultipart multipart = new MimeMultipart();
            for (String fileName : mailInfo.getAttachFileNames()) {
                MimeBodyPart attachment = new MimeBodyPart();
                // 读取本地文件
                DataHandler dh2 = new DataHandler(new FileDataSource(fileName));
                // 将附件数据添加到"节点"
                attachment.setDataHandler(dh2);
                // 设置附件的文件名（需要编码）
                attachment.setFileName(MimeUtility.encodeText(dh2.getName()));
                // 10. 设置（文本+图片）和 附件 的关系（合成一个大的混合"节点" / Multipart ）
                MimeMultipart mm = new MimeMultipart();
                mm.addBodyPart(attachment);     // 如果有多个附件，可以创建多个多次添加
                mm.setSubType("mixed");         // 混合关系
                multipart.addBodyPart(attachment);
            }
            mailMessage.setContent(multipart);
        }
        // 发送邮件
        Transport.send(mailMessage);
    }

    /**
     * 以HTML格式发送邮件
     *
     * @param mailInfo 待发送邮件信息
     * @throws Exception
     */
    public static void sendHtmlMail(MailSenderInfo mailInfo) throws Exception {
        MimeMessage mailMessage = initMimeMessage(mailInfo);
        Multipart multipart = new MimeMultipart();
        if (mailInfo.getAttachFileNames() != null) {
            for (String fileName : mailInfo.getAttachFileNames()) {
                MimeBodyPart attachment = new MimeBodyPart();
                // 读取本地文件
                DataHandler dh2 = new DataHandler(new FileDataSource(fileName));
                // 将附件数据添加到"节点"
                attachment.setDataHandler(dh2);
                // 设置附件的文件名（需要编码）
                attachment.setFileName(MimeUtility.encodeText(dh2.getName()));
                // 10. 设置（文本+图片）和 附件 的关系（合成一个大的混合"节点" / Multipart ）
                MimeMultipart mm = new MimeMultipart();
                mm.addBodyPart(attachment);     // 如果有多个附件，可以创建多个多次添加
                mm.setSubType("mixed");         // 混合关系
                multipart.addBodyPart(attachment);
            }
            mailMessage.setContent(multipart);
        }
        // 创建一个包含HTML内容的MimeBodyPart
        BodyPart html = new MimeBodyPart();
        html.setContent(mailInfo.getContent(), "text/html; charset=utf-8");
        multipart.addBodyPart(html);
        // 将MiniMultipart对象设置为邮件内容
        mailMessage.setContent(multipart);
        // 发送邮件
        Transport.send(mailMessage);
    }

    private static MimeMessage initMimeMessage(MailSenderInfo mailInfo) throws Exception {
        // 判断是否需要身份认证
        MyAuthenticator authenticator = null;
        Properties pro = mailInfo.getProperties();
        if (mailInfo.isValidate()) {
            // 如果需要身份认证，则创建一个密码验证器
            authenticator = new MyAuthenticator(mailInfo.getUserName(), mailInfo.getPassword());
        }
        // 根据邮件会话属性和密码验证器构造一个发送邮件的session
        Session sendMailSession = Session.getDefaultInstance(pro, authenticator);
        // 根据session创建一个邮件消息
        MimeMessage mailMessage = new MimeMessage(sendMailSession);
        // 创建邮件发送者地址
        Address from = new InternetAddress(mailInfo.getFromAddress());
        // 设置邮件消息的发送者
        mailMessage.setFrom(from);
        // 创建邮件的接收者地址，并设置到邮件消息中
        InternetAddress[] receiverAddress = new InternetAddress[mailInfo.getToAddressList().size()];
        for (int i = 0; i < mailInfo.getToAddressList().size(); i++) {
            receiverAddress[i] = new InternetAddress(mailInfo.getToAddressList().get(i));
        }
        mailMessage.setRecipients(Message.RecipientType.TO, receiverAddress);
        // 设置邮件消息的主题
        mailMessage.setSubject(mailInfo.getSubject());
        // 设置邮件消息发送的时间
        mailMessage.setSentDate(new Date());
        return mailMessage;
    }
}