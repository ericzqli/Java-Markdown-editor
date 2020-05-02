<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Invalid Request</title>
</head>
<body>
    <div><h1>Invalid Request</h1></div>
    <form>
        <div>
            <button type="submit">Save</button>
            <button type="submit">Close</button>
            <button type="submit">Preview</button>
            <button type="submit">Delete</button>
        </div>
        <div>
            <label for="title">Title</label>
            <input type="text" id="title">
        </div>
        <div>
            <label for="body">Body</label>
            <textarea style="height: 20rem;" id="body"></textarea>
        </div>
    </form>
</body>
</html>
