<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Post</title>
</head>
<body>
    <div><h1>Edit Post</h1></div>
   
    <!-- <div><h1><%= request.getParameter("body") %> </h1></div> -->
    <form action="post" method="GET"> 
        <div>
            <button type="submit" name="action" value="save">Save</button>
            <button type="submit" name="action" value="list">Close</button>
            <button type="submit" name="action" value="preview">Preview</button>
            <button type="submit" name="action" value="delete">Delete</button>
        </div>
        <input type="hidden" name="username" value=<%= request.getParameter("username")%>>
        <input type="hidden" name="postid" value=<%=request.getParameter("postid") %>>
        <div>
            <label for="title">Title</label>
            <input name="title" type="text" id="title" 
                 value = <% if(request.getAttribute("title") != null) {%> 
                <%= request.getAttribute("title")%> 
                <%} else if(request.getParameter("title") != null){%>
                    <%= request.getParameter("title") %>
                <%} else {%>
                <%=""%>

                <%}%>
                >
           
        </div>
        <div>
            <label for="body">Body</label>
            <textarea style="height: 20rem;" id="body" name="body"><% if(request.getAttribute("body") != null) {%><%= request.getAttribute("body")%><%} else if(request.getParameter("body") != null){%><%= request.getParameter("body") %><%} else {%> <%="" %> <%}%></textarea>
        </div>
    </form>
</body>
</html>
