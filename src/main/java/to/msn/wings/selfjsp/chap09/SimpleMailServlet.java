package to.msn.wings.selfjsp.chap09;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.Properties;

import jakarta.mail.Authenticator;
import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/chap09/SimpleMailServlet")
public class SimpleMailServlet extends HttpServlet {
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
		
		/*
		class MyAuthenticator extends Authenticator{
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(user, password);
			}
		}
		Session session = Session.getInstance(props, new MyAuthenticator());
		*/
		
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(
			"CQW15204@nifty.com", "WINGSプロジェクト", charset));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(
			"nami-piano@nifty.com", "山田祥寛", charset));
			message.setSubject("テストメール", charset);
			message.setText("テストメールです！！", charset);
			
			// HTMLメールの場合	       
			// String html = "<!DOCTYPE html><html><head><meta charset='UTF-8'><h1>こんにちは、Jakarta Mail！</h1><img src='https://wings.msn.to/image/wings.jpg'></body></html>";
			// message.setContent(html, "text/html; charset=iso-2022-jp");
			
			Transport.send(message);
		} catch (MessagingException | UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("メールが正しく送信されました。");
		}
	}
	