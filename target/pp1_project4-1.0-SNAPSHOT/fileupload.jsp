<%--
  Created by IntelliJ IDEA.
  User: jeongseong-gu
  Date: 2023/11/17
  Time: 5:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import ="com.example.pp1_project4.*, java.io.File"%>
<%@ page import ="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"
%>


<%
  String filename = "";
  int sizeLimit = 15 * 1024 * 1024;
  String realPath = request.getServletContext().getRealPath("upload");
  File dir = new File(realPath);
  if (!dir.exists()) dir.mkdirs();
  MultipartRequest multpartRequest = null;
  multpartRequest = new MultipartRequest(request, realPath,  sizeLimit, "utf-8",new DefaultFileRenamePolicy());
  filename = multpartRequest.getFilesystemName("photo");
  %>
filename: <%=filename%><br/>
<img src="${pageContext.request.contextPath}/upload/<%=filename%>">
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
