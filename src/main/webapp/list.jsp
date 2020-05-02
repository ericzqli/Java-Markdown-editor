<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"   %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<%@ page import="java.util.List, main.java.SinglePost" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>list</title>
</head>

<body>
    <div>
        <form action="post" method="GET">
            <input type="hidden" name="username" value=<%= request.getParameter("username")%>>
            <input type="hidden" name="postid" value=<%= "-1" %>>
            <input type="hidden" name="title" value=<%= ""%>>
            <input type="hidden" name="body" value=<%= ""%>>
            <button type="submit" name="action" value="open">New Post</button>
        </form>
    </div>
    <form>
        <table>
            <tr>
                <th>Title</th>
                <th>Created</th>
                <th>Modified</th>
            </tr>
            <% List<SinglePost> postList = (List<SinglePost>)request.getAttribute("data");%>
            <% for(SinglePost post : postList) {%>
                <tr>
                    <th><%= post.getUsername()%></th>
                    <th><%= post.getModified()%></th>
                    <th><%= post.getCreated()%></th>
                    <th>
                        <form action="post" method="GET">
                            <input type="hidden" name="username" value=<%= post.getUsername() %>>
                            <input type="hidden" name="postid" value=<%= post.getPostid() %>>
                            <input type="hidden" name="title" value=<%= post.getTitle() %>>
                            <input type="hidden" name="body" value=<%= post.getBody() %>>
                            <button type="submit" name="action" value="open">Open</button>
                            <button type="submit" name="action" value="delete">Delete</button>
                        </form>
                    </th>
                    

                </tr>


            <% } %>
            
         
           

        </table>
        
    </form>
</body>
</html>
