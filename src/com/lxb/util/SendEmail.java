package com.lxb.util;

import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import com.lxb.domain.User;

public class SendEmail {
	
	private SendEmail() {}
	/**
	 * 根据指定用户发送邮件的方法
	 * @param user 要发送邮件的用户
	 * @throws MessagingException 邮件发送异常
	 * @throws AddressException 邮箱地址异常
	 */
	public static void sendEmail(User user) throws AddressException, MessagingException {
		Properties prop = new Properties();
		// smtp服务协议
		prop.setProperty("mail.transport.protocol", "smtp");
		// 设置发送邮件的邮件服务器的属性（这里使用本机的易邮的smtp服务器）
		prop.setProperty("mail.smtp.host", "localhost");
		// 需要经过授权，也就是有户名和密码的校验，这样才能通过验证（一定要有这一条）
		prop.setProperty("mail.smtp.auth", "true");
		// 有了这句便可以在发送邮件的过程中在console处显示过程信息，供调试使
        // 用（你可以在控制台（console)上看到发送邮件的过程）
		prop.setProperty("mail.debug", "true");
		
		// 用刚刚设置好的props对象构建一个session
		Session session = Session.getInstance(prop);
		Message msg = new MimeMessage(session);
		// 加载发件人地址
		msg.setFrom(new InternetAddress("54estore@lxb.com"));
		// 加载收件人地址
		msg.setRecipient(RecipientType.TO, new InternetAddress(user.getEmail()));
		// 邮件标题
		msg.setSubject("亲爱的"+user.getUsername()+"，我是来自Estore的账号激活小天使！");
		// 设置邮件的文本内容
		msg.setText("尊敬的"+user.getUsername()+"：\n    您好！欢迎注册成为小宝哥的博客会员, 感谢您对小宝哥的支持！如果您在使用过程中遇到问题，\n" +
				"请及时与我们联系。我的邮箱：。如果不能点击，请将以下链接复制到浏览器地址栏访问即可！您的账号激活链接是：\n" +
				"http://localhost/MyBlog/servlet/ActiveServlet?activecode="+user.getActivecode()+"\n" +
				"账号激活后可以开启更多功能，期待您的加入！为了保障您的个人利益，请妥善保管您的账户信息！切勿告知他人！\n" +
				"为确保我们的信息不被当做垃圾邮件处理，请把小宝哥的邮件： 添加为您的联系人！\n" +
				"此为系统邮件，请勿直接回复，谢谢。");
		// 设置邮件发送时间
		msg.setSentDate(new Date(System.currentTimeMillis()));
		//保存邮件
		msg.saveChanges();
		Transport trans = session.getTransport();
		// 连接服务器的邮箱，输入用户名和密码进行校验
		trans.connect("54estore","123456");
		// 把邮件发送出去
		trans.sendMessage(msg, msg.getAllRecipients());
	}
}
