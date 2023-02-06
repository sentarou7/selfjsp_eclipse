package to.msn.wings.selfjsp.chap09;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.Properties;

import jakarta.activation.DataHandler;
import jakarta.activation.FileDataSource;
import jakarta.mail.Authenticator;
import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeBodyPart;
import jakarta.mail.internet.MimeMessage;
import jakarta.mail.internet.MimeMultipart;
import jakarta.mail.internet.MimeUtility;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/chap09/RichMailServlet")
public class RichMailServlet extends HttpServlet {
	private String host = null;
	private String port = null;
	private String user = null;
	private String password = null;
	private String charset = null;

	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		ServletContext app = config.getServletContext();
		this.host = app.getInitParameter("smtp.host");
		this.port = app.getInitParameter("smtp.port");
		this.user = app.getInitParameter("smtp.user");
		this.password = app.getInitParameter("smtp.password");
		this.charset = app.getInitParameter("smtp.charset");
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ServletContext app = this.getServletContext();
		Properties props = new Properties();
	    props.setProperty("mail.smtp.host", this.host);
	    props.setProperty("mail.smtp.port", this.port);
	    props.setProperty("mail.smtp.auth", "true");
	    props.setProperty("mail.smtp.connectiontimeout", "60000");
	    props.setProperty("mail.smtp.timeout", "60000");

		Session session = Session.getInstance(props, new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(user, password);
			}
		});

		try {
			MimeMessage message = new MimeMessage(session);
			MimeMultipart multipart = new MimeMultipart();
	
			MimeBodyPart part1 = new MimeBodyPart();
			part1.setText("添付ファイル付きのテストメールです！！", charset);
			
			// HTMLメールの場合
			// String html = "<!DOCTYPE html><html><head><meta charset='UTF-8'><h1>こんにちは、Jakarta Mail！</h1><img src='https://wings.msn.to/image/wings.jpg'></body></html>";
			// part1.setContent(html, "text/html; charset=iso-2022-jp");
			multipart.addBodyPart(part1);
	
			MimeBodyPart part2 = new MimeBodyPart();
			DataHandler handler = new DataHandler(
			  new FileDataSource(app.getRealPath("/chap09/flower.jpg")));
			part2.setDataHandler(handler);
			part2.setFileName(MimeUtility.encodeWord(handler.getName()));
			multipart.addBodyPart(part2);
	
			message.setFrom(new InternetAddress(
				"CQW5204@nifty.com", "WINGSプロジェクト", charset));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(
				"nami-piano@nifty.com", "山田祥寛", charset));
			message.setSubject("テストメール", charset);
			message.setContent(multipart);
	        Transport.send(message);
		} catch (MessagingException | UnsupportedEncodingException e) {
				e.printStackTrace();
		}
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("メールが正しく送信されました。");
    }
}