package EmailSend.emailpack;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class App 
{
    public static void main( String[] args ) throws MessagingException
    {
        System.out.println( "Hello World!" );
        String message ="ritik bhaiya kesa chl rha spring boot ... ";
        String subject = "Rupali baat kr rhi hu";
        String from = "railbooking389@gmail.com";
        String to = "ritiksharma0706@gmail.com";
        
        sendingEmail(message,subject,from,to);
    }

	private static void sendingEmail(String message, String subject, String from, String to) throws MessagingException {
		String host = "smtp.gmail.com";
		Properties p = 	System.getProperties();
		System.out.println(p);
		p.put("mail.smtp.host", host);
		p.put("mail.smtp.port", "465");
		p.put("mail.smtp.ssl.enable", "true");
		p.put("mail.smtp.auth", "true");
		
		Session session = Session.getInstance(p,new Authenticator() {

			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				// TODO Auto-generated method stub
				return new PasswordAuthentication("railbooking389@gmail.com","xepb uheg slqv kdqt");
			}
		
		});
		
		session.setDebug(true);
		
		MimeMessage mm = new MimeMessage(session);
		mm.setFrom(from);
		mm.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		mm.setSubject(subject);
		mm.setText(message);
		Transport.send(mm);
		System.out.println("message sent successfully.........");
		
	}
}
