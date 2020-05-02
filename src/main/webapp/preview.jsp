<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>preview</title>
</head>
<body>
    <div>
        <form action="post" method="GET">
            <input type="hidden" name="username" value=<%= request.getParameter("username")%>>
            <input type="hidden" name="postid" value=<%=request.getParameter("postid") %>>
            <input type="hidden" name="title" value=<%= request.getParameter("title")%>>
            <input type="hidden" name="body" value=<%= request.getParameter("body")%>>
            <button type="submit" name="action" value="open">close</button>
        </form>
    </div>
    
    <div>
        
    </div>
    <h1 id="title">
        <p>
            <em><%= request.getParameter("title")%></em>
        </p>
    </h1>
    <div id="body">
        <%= request.getAttribute("body") %>
    </div>
    
</body>
</html>
