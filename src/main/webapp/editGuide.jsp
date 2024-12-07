<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Guide</title>
</head>
<body>
    <h2>Edit Guide</h2>
    <form action="/guides/editGuide" method="POST">
    <input type="hidden" name="id" value="${guide.id}">
    
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" value="${guide.name}" required><br>

    <label for="specialization">Specialization:</label>
    <input type="text" id="specialization" name="specialization" value="${guide.specialization}" required><br>

    <label for="languages">Languages:</label>
    <input type="text" id="languages" name="languages" value="${guide.languages}" required><br>

    <label for="contactNumber">Contact Number:</label>
    <input type="text" id="contactNumber" name="contactNumber" value="${guide.contactNumber}" required><br><br>

    <button type="submit">Update Guide</button>
</form>


</body>
</html>
