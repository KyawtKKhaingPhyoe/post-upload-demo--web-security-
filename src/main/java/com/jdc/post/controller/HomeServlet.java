package com.jdc.post.controller;

import java.io.IOException;
import java.util.List;

import javax.sql.DataSource;

import com.jdc.post.model.PostDao;
import com.jdc.post.model.dto.Post;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/home")
public class HomeServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Resource(name="jdbc/postDS")
	private DataSource dataSource;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<Post> list = PostDao.getInstance(dataSource).search(req.getParameter("keyword"));
		
		req.setAttribute("list", list);
		
		getServletContext().getRequestDispatcher("/views/home.jsp");
		
	}

}
