package com.lxb.listener;

import java.util.LinkedHashMap;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpSession;

import com.lxb.domain.User;


public class UserListener implements ServletContextListener  {

	@Override
	public void contextDestroyed(ServletContextEvent s) {
		
	}

	@Override
	public void contextInitialized(ServletContextEvent s) {
		ServletContext context = s.getServletContext();
		context.setAttribute("userMap", new LinkedHashMap<User, HttpSession>());
	}

}
