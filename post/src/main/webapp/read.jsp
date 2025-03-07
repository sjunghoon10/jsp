<%@page import="com.app.vo.PostVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글정보페이지</title>
</head>
<body>

<%
	PostVO post = (PostVO)request.getAttribute("post");
%>
<table>
    <tr>
        <th>게시글 번호</th>
        <th>게시글 이름</th>
        <th>게시글 내용</th>
    </tr>
    <tr>
        <td><%= post.getId() %></td>
        <td>
            <a href="read.post?id=<%= post.getId() %>">
                <%= post.getPostTitle() %>
            </a>
        </td>
        <td><%= post.getPostContent() %></td>
    </tr>
</table>
<div>
<a href="list.post">목록으로 가기</a>
<a href="update.post?id=<%=post.getId() %>">게시글 수정</a>
</div>
</body>
</html>