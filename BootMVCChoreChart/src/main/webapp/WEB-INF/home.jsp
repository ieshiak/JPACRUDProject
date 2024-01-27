<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
</head>
<body>
    <form action="getChore.do" method="GET">
        Chore ID: <input type="text" name="choreId" />
        <input type="submit" value="Show Chore" />
    </form>
<a href="<c:url value='/add' />">Add</a>
<a href="<c:url value='/edit/${chore.id}' />">Edit</a>
<a href="<c:url value='/delete/${chore.id}' />">Delete</a>



</body>
</html>
