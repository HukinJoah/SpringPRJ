<%@page import="poly.util.CmmUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String usrID = CmmUtil.nvl((String)session.getAttribute("usrID"));
	String usrName = CmmUtil.nvl((String)session.getAttribute("usrName"));
	String usrEmail = CmmUtil.nvl((String)session.getAttribute("usrEmail"));
	String usrNo = CmmUtil.nvl((String)session.getAttribute("usrNo"));
	String usrHPNum = CmmUtil.nvl((String)session.getAttribute("usrHPNum"));
	String usrAdmin = CmmUtil.nvl((String)session.getAttribute("usrAdmin"));
	String usrIntro = CmmUtil.nvl((String)session.getAttribute("usrIntro"));
%>