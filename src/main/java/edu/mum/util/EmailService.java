package edu.mum.util;

public interface EmailService {

    public void sendEmailNotification(String to, String messageHeading, String messageBody);
}
