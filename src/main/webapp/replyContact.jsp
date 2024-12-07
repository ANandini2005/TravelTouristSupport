<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reply to Contact Message</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/replyContact.css">
    
</head>
<body>

<div class="container mt-5">
    <h2>Reply to Contact Message</h2>
    
    <!-- Displaying Success Message if any -->
    <div class="alert alert-success" role="alert" style="display:${not empty message ? 'block' : 'none'}">
        ${message}
    </div>

    <!-- Reply Form -->
    <form action="/sendReply" method="POST">
        <input type="hidden" name="contactId" value="${contact.id}" />
        
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" class="form-control" id="name" value="${contact.name}" disabled>
        </div>
        
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" class="form-control" id="email" value="${contact.email}" disabled>
        </div>
        
        <div class="form-group">
            <label for="message">Original Message:</label>
            <textarea class="form-control" id="message" rows="4" disabled>${contact.message}</textarea>
        </div>
        
        <div class="form-group">
            <label for="replyMessage">Your Reply:</label>
            <textarea name="replyMessage" id="replyMessage" class="form-control" rows="6" required></textarea>
        </div>
        
        <button type="submit" class="btn btn-primary">Send Reply</button>
    </form>
    
    <br>
    <a href="/adminDashboard" class="btn btn-secondary">Back to Dashboard</a>
</div>

<!-- Bootstrap JS (Optional) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
