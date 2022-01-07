<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="com.javaex.vo.GuestbookVo" %>

<%

	int no = Integer.parseInt(request.getParameter("no"));
	String password = request.getParameter("password");
	
	//해당하는 생성자를 만들고 사용해도 됨
	//GuestbookVo guestbookVo = new GuestbookVo(no, password);
	
	//기본생성자를 이용하고 setter를 사용해서 값 초기화
	GuestbookVo guestbookVo = new GuestbookVo();
	guestbookVo.setNo(no);
	guestbookVo.setPassword(password);
	
	
	GuestbookDao guestbookDao = new GuestbookDao();
	guestbookDao.delete(guestbookVo);
	
	
	response.sendRedirect("./addList.jsp");

	/*
	GuestbookDao guestbookDao = new GuestbookDao();

	int no = Integer.parseInt(request.getParameter("no"));
	String password = request.getParameter("password");

	
	GuestbookVo guestbookVo = new GuestbookVo();
	guestbookVo.setNo(no);
	guestbookVo.setPassword(password);
	
	
	String pw = guestbookDao.getPassword(no);
	
	if(password.equals(pw)){//비밀번호가 맞으면
		guestbookDao.delete(guestbookVo);
	}
	
	response.sendRedirect("./addList.jsp");
	*/	
	
	

	
%>



