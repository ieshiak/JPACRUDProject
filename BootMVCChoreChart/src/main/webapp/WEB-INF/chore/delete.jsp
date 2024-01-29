<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Chore</title>
</head>
<body>

    <h2>Delete Chore</h2>

    <form action="/deleteChore" method="post">
        <input type="hidden" name="id" value="${deleteChore.id}"/>

        <p>Are you sure you want to delete the chore with ID ${deleteChore.id}?</p>


        <input type="submit" value="Delete"/>
    </form>

</body>
</html>
