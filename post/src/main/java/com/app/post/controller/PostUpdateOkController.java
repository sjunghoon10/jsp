package com.app.post.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.PostDAO;
import com.app.vo.PostVO;

public class PostUpdateOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
		PostDAO postDAO = new PostDAO();
		PostVO postVO = new PostVO();
		Result result = new Result();
		postVO.setId(Long.parseLong(req.getParameter("id")));
		postVO.setPostTitle(req.getParameter("postTitle"));
		postVO.setPostContent(req.getParameter("postContent"));
		
		
		postDAO.update(postVO);
		
		result.setRedirect(true);
		result.setPath("list.post");
		
		return result;
	}

}