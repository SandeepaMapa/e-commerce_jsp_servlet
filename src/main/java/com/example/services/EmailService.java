package com.example.services;

import jakarta.mail.*;
import jakarta.mail.internet.*;
import java.util.Properties;

public class EmailService {
    public static void sendVerificationEmail(String email, String token) {
        final String username = "94d8b227d31dcb8a29353020a6a42bba"; // Your Mailjet API key
        final String password = "11e320273876d85aa2db231581551b5c"; // Your Mailjet secret key

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "in-v3.mailjet.com");
        props.put("mail.smtp.port", "587");
        Session session = Session.getInstance(props,
                new jakarta.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("gayansandeepam88@gmail.com"));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
            message.setSubject("Email Verification");
            message.setText("Dear User,"
                    + "\n\n Please verify your email by clicking the link below:"
                    + "\n http://localhost:8080/jsp_servlet_project_war/verify?token=" + token);

            Transport.send(message);
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }
}