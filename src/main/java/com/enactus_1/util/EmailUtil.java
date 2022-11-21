package com.enactus_1.util;

import java.io.File;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

@Component
public class EmailUtil {

	@Autowired
	private JavaMailSender sender;
	
	public void sendItinerary(String toAddress, String filePath) {
			MimeMessage message = sender.createMimeMessage();
			try {
				MimeMessageHelper messageHelper = new MimeMessageHelper(message,true);
				messageHelper.setTo(toAddress);
				messageHelper.setSubject("Your purchase is successful!");
				messageHelper.setText("Dear Learner, \n\nThanks for choosing UpSkill Academy! Please find the attached bill for your reference. \n\nHappy Learning! \n\n\nThanks & Regards,\n\nMarketing Support Team\nUpSkill Academy");
				messageHelper.addAttachment("Billing Details", new File(filePath) );
				sender.send(message);
			} catch (MessagingException e) {
				e.printStackTrace();
			}
			
	}
}
