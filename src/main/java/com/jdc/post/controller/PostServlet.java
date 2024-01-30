package com.jdc.post.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {
		"/post/edit",
		"/details",
		"/post/delete"
})
public class PostServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		var postId = req.getParameter("id");
		
		var view = switch(req.getServletPath()) {
		case "/details" -> "/views/details.jsp";
		case "/post/edit" -> "/views/edit.jsp";
		case "/post/delete" -> {
			// delete post from database
			yield null;
		}
		default -> null;
		};
		
		if(null == view) {
			resp.sendRedirect(getServletContext().getContextPath());
		} else {
			if(null != postId && postId.isEmpty()) {
				// search post from database by id
			}
			
			getServletContext().getRequestDispatcher(view).forward(req, resp);
			
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.sendRedirect(getServletContext().getContextPath().concat("/details?id="));
		
	}

}
