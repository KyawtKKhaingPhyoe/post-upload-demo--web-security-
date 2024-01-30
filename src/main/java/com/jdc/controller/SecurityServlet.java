package com.jdc.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {
		"/sign-in",
		"/sign-up",
		"/sign-out"
})
public class SecurityServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		var view =  switch(req.getServletPath()) {
		case "/sign-in" -> "/views/signin.jsp";
		case "/sign-up" -> "/views/signup.jsp";
		case "/sign-out" -> {
			req.getSession().invalidate();
			yield null;
		}
		default -> null;
		};
		
		if(null == view) {
			resp.sendRedirect(getServletContext().getContextPath().concat("/home"));
		} else {
			getServletContext().getRequestDispatcher(view).forward(req, resp);
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		switch(req.getServletPath()) {
		case "/sign-in" -> {
			
		}
		case "/sign-up" -> {
			
		}
		default -> {
			
		}
		}
		
		resp.sendRedirect(getServletContext().getContextPath().concat("/home"));
		
	}
	

}
