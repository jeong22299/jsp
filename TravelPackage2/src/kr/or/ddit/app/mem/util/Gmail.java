package kr.or.ddit.app.mem.util;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class Gmail extends Authenticator{

	@Override
	protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication("siteAd987@gmail.com ","minsite1346~!@");
	}
	
}
