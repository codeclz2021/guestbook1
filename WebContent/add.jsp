<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="com.javaex.vo.GuestbookVo" %>

<%
	String name = request.getParameter("name");
	String password = request.getParameter("pass");
	String content = request.getParameter("content");
	
	GuestbookVo guestbookVo = new GuestbookVo(name, password, content);
	
	GuestbookDao guestbookDao = new GuestbookDao();
	guestbookDao.insert(guestbookVo);
	
	response.sendRedirect("./addList.jsp");
%>
