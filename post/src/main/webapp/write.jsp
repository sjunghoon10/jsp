<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 추가 페이지</title>
</head>
<body>
<form action="write-ok.post" method="post">
<label>
<input type="text" name="postTitle" placeholder="게시글 이름"/>
</label>
<label>
<input type="text" name="postContent" placeholder="게시글 내용"/>
</label>
<label>
<button>게시글 등록</button>
</label>
</form>
</body>
</html>