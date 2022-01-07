<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="com.javaex.vo.GuestbookVo" %>

<%
	//다오 메모리에 올리기
	GuestbookDao guestbookDao = new GuestbookDao();

	//guestbookList 가져오기
	List<GuestbookVo> guestbookList = guestbookDao.getList();
	
	//테스트
	System.out.println(guestbookList.toString());
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 등록폼영역 -->
	<form action="./add.jsp" method="get">
	
		<table border="1" width="500px" >
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
				<td>비밀번호</td>
				<td><input type="password" name="pass"></td>
			</tr>
			<tr>
				<td colspan="4">
					<textarea name="content" cols="65" rows="5"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="4">
					<button type="submit">글작성</button>
				</td>
			</tr>
		</table>
	</form>
	<br>
	<!-- /등록폼영역 -->

	<!-- 리스트영역 -->
	<%
	for(int i=0; i<guestbookList.size(); i++){
	%>
		<table border="1" width="500px">
			<tr>
				<td><%=guestbookList.get(i).getNo()%></td>
				<td><%=guestbookList.get(i).getName()%></td>
				<td><%=guestbookList.get(i).getRegDate()%></td>
				<td><a href="./deleteForm.jsp?no=<%=guestbookList.get(i).getNo()%>">삭제</a></td>
			</tr>
			<tr>
				<td colspan="4">
					<%=guestbookList.get(i).getContent()%>
				</td>
			</tr>
		</table>
		<br>	
	<%	
	}
	%>
	

	<!-- /리스트영역 -->
</body>
</html>