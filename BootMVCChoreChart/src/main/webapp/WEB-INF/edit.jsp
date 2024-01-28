<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Chore</title>
</head>
<body>
    <h2>Edit Chore</h2>
    <form action="<c:url value='/edit/' />${chore.id}" method="post">

        <!-- Add input fields for your Chore entity -->
        <label>Title: <input type="text" name="title" value="${chore.title}" required></label><br>
        <!-- Add other input fields based on your Chore entity fields -->
        <input type="submit" value="Update Chore">
    </form>
    <a href="<c:url value='/choreList' />">Back to Chores List</a>
</body>
</html>
