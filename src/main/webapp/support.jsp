<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>24/7 Support</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="css/support.css">
</head>

<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <a class="navbar-brand" href="/">Travel Portal</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="/home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/accommodations">Accommodation</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/destinations">Destinations</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/profile?username=${username}">Profile</a>
                </li>
                <li class="nav-item">
                    <form action="/logout" method="get" style="display:inline;">
                        <button type="submit" class="btn btn-link nav-link">Logout</button>
                    </form>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero-section">
        <h1>24/7 Customer Support</h1>
        <p>Our support team is always here to help you with any questions or issues.</p>
    </section>

    <!-- Support Options Section -->
    <section class="support-section">
        <h2>How Can We Help You?</h2>

        <!-- Contact Form -->
        <div class="support-option">
            <h3>Contact Form</h3>
            <p>If you prefer, you can fill out the form below, and we'll get back to you shortly.</p>
            <form action="/submit-support-form" method="POST" class="support-form">
                <div class="form-group">
                    <label for="name">Your Name</label>
                    <input type="text" id="name" name="name" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="email">Your Email</label>
                    <input type="email" id="email" name="email" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="message">Your Message</label>
                    <textarea id="message" name="message" class="form-control" rows="5" required></textarea>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>

        <!-- Contact Details -->
        <div class="support-option">
            <h3>Contact Details</h3>
            <p>You can also reach us directly through the following methods:</p>
            <ul class="contact-details">
                <li><i class="fas fa-phone-alt"></i> Phone: +1 800-123-4567</li>
                <li><i class="fas fa-envelope"></i> Email: support@travelx.com</li>
                <li><i class="fas fa-map-marker-alt"></i> Address: 123 Travel St, Suite 101, City, Country</li>
            </ul>
        </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
        <p>&copy; 2024 TravelX. All rights reserved.</p>
    </footer>
    
    <!-- Display success message if present -->
<c:if test="${not empty successMessage}">
    <div class="alert alert-success" role="alert">
        ${successMessage}
    </div>
</c:if>
    

    <!-- Live Chat Script (Mockup) -->
    <script>
        document.getElementById('live-chat-btn').addEventListener('click', function () {
            alert("Live chat feature will be available soon!");
        });
    </script>
</body>

</html>
