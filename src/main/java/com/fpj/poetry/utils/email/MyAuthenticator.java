package com.fpj.poetry.utils.email;


import jakarta.mail.Authenticator;
import jakarta.mail.PasswordAuthentication;

public class MyAuthenticator extends Authenticator {
    private String userName;
    private String password;

    public MyAuthenticator() {
    }

    public MyAuthenticator(String userName, String password) {
        this.userName = userName;
        this.password = password;
    }

    @Override
    protected PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication(userName, password);
    }
}