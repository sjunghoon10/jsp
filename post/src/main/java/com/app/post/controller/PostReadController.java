package com.app.post.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.PostDAO;

public class PostReadController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		 Result result = new Result();
		 PostDAO psotDAO = new PostDAO();
		 Long id = Long.parseLong(req.getParameter("id"));
		 System.out.println(id);
		 
		 req.setAttribute("post", psotDAO.select(id).orElseThrow(() -> {
			 throw new RuntimeException("PostReadController user not found");
		 }));
		 
		 result.setPath("read.jsp");
		 return result;
	}

}