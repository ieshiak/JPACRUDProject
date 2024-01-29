<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<head>
    <title>Chores</title>
</head>
<body>
    <h2>Chores</h2>


    <c:if test="${not empty chore}">
        <div style="border: 1px solid #ccc; margin-bottom: 10px; padding: 10px;">
            <h3><a href="<c:url value='/getChore.do' />?choreId=${chore.id}">${chore.title}</a></h3>
          	<p>ID: ${chore.id}</p>
            <p>Description: ${chore.description}</p>
            <p>Room: ${chore.room}</p>
            <p>Frequency: ${chore.frequencyWeekday}</p>
            <p>Difficulty: ${chore.difficultyRanking}</p>
            <p>Tool: ${chore.tool}</p>
            <p>Instructions: ${chore.instructions}</p>
            <p>Additional Information: ${chore.additionalInformation}</p>
        </div>
    </c:if>


    <a href="<c:url value='/add' />">Add</a>
     <a href="<c:url value='/edit/${chore.id}'/>">Edit</a>
     <a href="<c:url value='/delete/${chore.id}'/>">Delete</a>

</body>
</html>
