<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>文件上传</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
  <body >
  <!--文件上传的按钮  -->
  	<form action="disFile/upFile.do" method="post" enctype="multipart/form-data" role="form">
    	<input type="file" name="fileName" id="file"/>
    	<input type="submit" value="提交">
  	</form>
  	<br>
  	<br>
  	<br>
  	<!-- 文件下载的按钮 -->
  	<form action="disFile/downloadFile.do" method="post" enctype="multipart/form-data" role="form">
  		<input type="text" name="path" id="path" value="D:/Program Files/Apache Software Foundation/Tomcat 8.0/webapps/aspose/upload/20180619.docx">
  		<input type="text" name="filename" id="filename" value="20180619.docx">
    	<input type="submit" value="download">
  	</form>
  	<br>
  	<br>  	<br>
  	<br>
  	<!-- 文件的在线预览 -->
  	<form action="disFile/dispdf.do" method="post" enctype="multipart/form-data" role="form">
  		<input type="text" name="path" id="path" value="C:/Users/Administrator/Desktop/123.pdf">
    	<input type="submit" value="look">
  	</form>
  	<iframe src="<c:url value="build/generic/web/viewer.html" />?file="
        width="100%" height="800"></iframe>
  	<div><span style="color:red">${info }</span></div>
  </body>
</html>
