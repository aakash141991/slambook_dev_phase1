package slambook.com.util;

import javax.servlet.http.HttpSession;

public class LoginUtil {

	
	public static String getLogginStatus(HttpSession session){
		String result = "false";
		if( session.getAttribute("loggedIn") != null){
			result = (String)session.getAttribute("loggedIn");
		}
		/*if(result==null){
			
		}*/
		return result;
		
	}
	
}
