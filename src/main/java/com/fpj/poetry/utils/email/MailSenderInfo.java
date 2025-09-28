package com.fpj.poetry.utils.email;

import com.sun.mail.util.MailSSLSocketFactory;
import java.security.GeneralSecurityException;
import java.util.List;
import java.util.Properties;

public class MailSenderInfo {
    // 发送邮件的服务器的IP和端口
    private String mailServerHost;
    private String mailServerPort = "465";
    private boolean enableSSL;
    private boolean enableTLS;
    // 邮件发送者的地址
    private String fromAddress;
    // 邮件接收者的地址
    private List<String> toAddressList;
    // 登陆邮件发送服务器的用户名和密码
    private String userName;
    private String password;
    // 是否需要身份验证
    private boolean validate = false;
    // 邮件主题
    private String subject;
    // 邮件的文本内容
    private String content;
    // 邮件附件的文件名
    private List<String> attachFileNames;

    /**
     * 获得邮件会话属性
     */
    public Properties getProperties() throws GeneralSecurityException {
        Properties p = new Properties();
        p.put("mail.smtp.host", this.mailServerHost);
        p.put("mail.smtp.port", this.mailServerPort);
        if (this.enableSSL) {
            MailSSLSocketFactory sf = null;
            sf = new MailSSLSocketFactory();
            // 设置信任所有的主机
            sf.setTrustAllHosts(true);
            p.put("mail.smtp.ssl.enable", "true");
            p.put("mail.smtp.ssl.socketFactory", sf);
        }
        p.put("mail.smtp.starttls.enable", enableTLS ? "true" : false);
        p.put("mail.smtp.auth", validate ? "true" : "false");
        return p;
    }

    public String getMailServerHost() {
        return mailServerHost;
    }

    public void setMailServerHost(String mailServerHost) {
        this.mailServerHost = mailServerHost;
    }

    public String getMailServerPort() {
        return mailServerPort;
    }

    public void setMailServerPort(String mailServerPort) {
        this.mailServerPort = mailServerPort;
    }

    public String getFromAddress() {
        return fromAddress;
    }

    public void setFromAddress(String fromAddress) {
        this.fromAddress = fromAddress;
    }

    public boolean isEnableSSL() {
        return enableSSL;
    }

    public void setEnableSSL(boolean enableSSL) {
        this.enableSSL = enableSSL;
    }

    public boolean isEnableTLS() {
        return enableTLS;
    }

    public void setEnableTLS(boolean enableTLS) {
        this.enableTLS = enableTLS;
    }

    public List<String> getToAddressList() {
        return toAddressList;
    }

    public void setToAddressList(List<String> toAddressList) {
        this.toAddressList = toAddressList;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isValidate() {
        return validate;
    }

    public void setValidate(boolean validate) {
        this.validate = validate;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public List<String> getAttachFileNames() {
        return attachFileNames;
    }

    public void setAttachFileNames(List<String> attachFileNames) {
        this.attachFileNames = attachFileNames;
    }
}