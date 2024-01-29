<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Chore</title>
    <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
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
