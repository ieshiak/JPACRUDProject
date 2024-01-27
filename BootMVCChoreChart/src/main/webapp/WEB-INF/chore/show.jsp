<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Chores List</title>
</head>
<body>
    <h2>Chores List</h2>
        <c:forEach var="chore" items="${chores}">
            <tr>
                <!-- Add other fields based on your Chore entity fields -->
                <td>
                    <a href="<c:url value='/getChore.do' />?choreId=${chore.id}">View</a>
                    <a href="<c:url value='/chores/edit/' />${chore.id}">Edit</a> 
                    <a href="<c:url value='/chores/delete/' />${chore.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>

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

    <c:if test="${empty chore}">
        <h2>Chore not found.</h2>
    </c:if>
<a href="<c:url value='/add' />">Add</a>
<a href="<c:url value='/edit/${chore.id}' />">Edit</a>
<a href="<c:url value='/delete/${chore.id}' />">Delete</a>


</body>
</html>
