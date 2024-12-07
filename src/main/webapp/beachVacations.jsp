<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beach Vacations</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="css/beach.css">
</head>
<body>
   <!-- Navigation bar -->
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

   <!-- Hero Section -->
   <div class="content">
        <header class="bg-light text-center py-5">
            <div class="container">
                <h1 class="display-4">Beach Vacations</h1>
                <p class="lead">Relax on beautiful beaches and enjoy sun, sea, and sand!</p>
            </div>
        </header>
        
        <!-- Beach Locations Section -->
        <section class="container my-5">
            <h2 class="text-center mb-4">Top Beach Destinations</h2>
            <div class="row">
                <!-- Destination 1 -->
                <div class="col-md-4">
                    <div class="card">
                        <img src="images/maldives.jpg" class="card-img-top" alt="Maldives">
                        <div class="card-body">
                            <h5 class="card-title">Maldives</h5>
                            <p class="card-text">Relax in paradise with stunning beaches and crystal-clear waters.</p>
                        </div>
                    </div>
                </div>
                <!-- Destination 2 -->
                <div class="col-md-4">
                    <div class="card">
                        <img src="images/boracay.jpg" class="card-img-top" alt="Boracay">
                        <div class="card-body">
                            <h5 class="card-title">Boracay, Philippines</h5>
                            <p class="card-text">Enjoy white-sand beaches and vibrant nightlife.</p>
                        </div>
                    </div>
                </div>
                <!-- Destination 3 -->
                <div class="col-md-4">
                    <div class="card">
                        <img src="images/hawaii.avif" class="card-img-top" alt="Hawaii">
                        <div class="card-body">
                            <h5 class="card-title">Hawaii, USA</h5>
                            <p class="card-text">Explore beautiful beaches, volcanic landscapes, and lush scenery.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Map Section -->
        <section class="container my-5" id="map-section">
            <h2 class="text-center mb-4">Find Your Beach</h2>
            <div class="map-responsive">
                <iframe
                    src="https://www.google.com/maps/embed?pb=..."
                    width="600"
                    height="450"
                    style="border:0;"
                    allowfullscreen=""
                    loading="lazy">
                </iframe>
            </div>
        </section>
    </div>

    <!-- Footer -->
    <footer class="bg-primary text-white text-center py-3">
        <p>© 2024 Travel Portal. All Rights Reserved.</p>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
