<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Romantic Getaways</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="css/getaways.css"> <!-- Link to custom CSS if needed -->
</head>
<body>

<!-- Navigation Bar (optional, if not already included in a parent template) -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <a class="navbar-brand" href="/">Travel Portal</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item"><a class="nav-link" href="/home">Home</a></li>
            <li class="nav-item"><a class="nav-link" href="/destinations">Destinations</a></li>
            <li class="nav-item"><a class="nav-link" href="/travelPackages">Packages</a></li>
            <li class="nav-item"><a class="nav-link" href="/contact">Contact</a></li>
        </ul>
    </div>
</nav>

<!-- Hero Section for Romantic Getaways -->
<header class="bg-light text-center py-5">
    <div class="container">
        <h1 class="display-4">Romantic Getaways</h1>
        <p class="lead">Escape to breathtaking destinations perfect for couples.</p>
    </div>
</header>

<!-- Romantic Destinations Section -->
<section class="container my-5">
    <h2 class="text-center mb-4">Popular Romantic Destinations</h2>
    <div class="row">
        <!-- Destination 1 -->
        <div class="col-md-4 mb-4">
            <div class="card">
                <img src="images/treehouse.jpeg" class="card-img-top" alt="Paris">
                <div class="card-body">
                    <h5 class="card-title">Treehouse Hotel</h5>
                    <p class="card-text">Minutes from downtown Atlanta, the Treehouse Hotel consists of three separate rooms, each connected by rope-bridges. The bed is equipped with wheels so it can be rolled out onto a platform to overlook the stream below.</p>
                    <a href="/bookPackage?destination=Paris" class="btn btn-primary">Seize the Romance</a>
                </div>
            </div>
        </div>
        <!-- Destination 2 -->
        <div class="col-md-4 mb-4">
            <div class="card">
                <img src="images/florida.jpeg" class="card-img-top" alt="Venice">
                <div class="card-body">
                    <h5 class="card-title">Little Palm Island</h5>
                    <p class="card-text">Enjoy a romantic gondola ride and explore the beauty of florida, the city of canals.</p>
                    <a href="/bookPackage?destination=Venice" class="btn btn-primary">Begin your Story</a>
                </div>
            </div>
        </div>
        <!-- Destination 3 -->
        <div class="col-md-4 mb-4">
            <div class="card">
                <img src="images/ratua.jpg" class="card-img-top" alt="Maldives">
                <div class="card-body">
                    <h5 class="card-title">Ratua Private Island - Vanuatu</h5>
                    <p class="card-text">Relax in paradise with secluded beaches, overwater bungalows, and stunning sunsets.</p>
                    <a href="/bookPackage?destination=Maldives" class="btn btn-primary">Your Moment Awaits</a>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Package Information Section -->
<section class="container my-5">
    <h2 class="text-center mb-4">Package Details</h2>
    <div class="row">
        <div class="col-md-6">
            <h4>What's Included</h4>
            <ul>
                <li>Round-trip flights</li>
                <li>Luxury accommodations</li>
                <li>Romantic dinners</li>
                <li>Private tours and activities</li>
            </ul>
        </div>
        <div class="col-md-6">
            <h4>Optional Add-ons</h4>
            <ul>
                <li>Private photographers</li>
                <li>Spa and wellness treatments</li>
                <li>Customized itineraries</li>
                <li>Helicopter tours</li>
            </ul>
        </div>
    </div>
</section>

<!-- Footer -->
<footer class="bg-primary text-white text-center py-3">
    <p>© 2024 Travel Portal. All Rights Reserved.</p>
</footer>

<!-- JavaScript files -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
