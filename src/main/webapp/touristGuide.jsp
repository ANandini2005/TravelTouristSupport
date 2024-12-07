<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tourist Guides</title>
    <link rel="stylesheet" type="text/css" href="css/touristGuide.css">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    
</head>
  <style>
 .navbar-fixed {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    z-index: 1030; /* Ensures it stays above other elements */
}
</style>
<!-- Navigation bar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary navbar-fixed">
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
                <a class="nav-link" href="/profile?username=${username}">Profile</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#map-section">Search Map Location</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/destinations">Destinations</a>
            </li>
            <li class="nav-item">
                <form action="/logout" method="get" style="display:inline;">
                    <button type="submit" class="btn btn-link nav-link">Logout</button>
                </form>
            </li>
        </ul>
    </div>
</nav>
<body>

    <div class="tourist-guide-container">
        <h1>Tourist Guides</h1>
        <p>Find experienced tourist guides to help you explore destinations with local expertise and insights.</p>

        <!-- Tourist Guides Section -->
        <section class="section">
            <h2>Available Guides</h2>
            <div class="guides">
                <div class="card">
                    <img src="images/guide1.jpg" alt="Tourist Guide 1">
                    <h3>Rajesh Kumar</h3>
                    <p>Specialized in: Heritage Sites</p>
                    <p>Languages: English, Hindi</p>
                    <p>Contact: +91 9876543210</p>
                </div>
                <div class="card">
                    <img src="images/guide4.jpg" alt="Tourist Guide 2">
                    <h3>Anita Verma</h3>
                    <p>Specialized in: Nature and Wildlife</p>
                    <p>Languages: English, Malayalam</p>
                    <p>Contact: +91 9123456789</p>
                </div>
                <div class="card">
                    <img src="images/guide3.avif" alt="Tourist Guide 3">
                    <h3>Mohammed Arif</h3>
                    <p>Specialized in: City Tours</p>
                    <p>Languages: English, Urdu</p>
                    <p>Contact: +91 9012345678</p>
                </div>
            </div>
        </section>

        <!-- Benefits of Hiring Guides -->
        <section class="section">
            <h2>Why Hire a Guide?</h2>
            <ul class="benefits">
                <li>Get insider knowledge about the destination.</li>
                <li>Save time with optimized travel itineraries.</li>
                <li>Experience local culture and traditions with expert insights.</li>
                <li>Ensure safety and convenience during your trip.</li>
                <li>Communicate better with locals through multilingual guides.</li>
            </ul>
        </section>

        <!-- How to Book a Guide -->
        <section class="section">
            <h2>How to Book a Guide?</h2>
            <ol class="steps">
                <li>Choose a guide based on your destination and requirements.</li>
                <li>Contact the guide using the provided phone number or email.</li>
                <li>Discuss your travel plans and finalize the itinerary.</li>
                <li>Confirm the booking by paying the advance amount if required.</li>
                <li>Enjoy a hassle-free travel experience!</li>
            </ol>
        </section>
    </div>
</body>
</html>
