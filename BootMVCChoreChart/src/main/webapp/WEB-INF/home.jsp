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
        SHOW Chore ID: <input type="text" name="choreId" />
        <input type="submit" value="Show Chore" />
    </form>
    
   <h2>All Chores</h2>

<c:forEach var="chore" items="${chores}">
    <p>
        <a href="getChore.do?choreId=${chore.id}">
            ${chore.title}
        </a>
    </p>
</c:forEach>
    
    
</body>
</html>
