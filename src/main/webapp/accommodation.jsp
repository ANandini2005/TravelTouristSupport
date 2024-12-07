<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Accommodation Packages</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="css/accommodation.css">
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
    <section class="hero-section">
        <h1>Find Your Perfect Stay</h1>
        <p>Explore a variety of accommodations, tailored to your preferences and budget.</p>
    </section>

    <!-- Accommodation Section -->
    <section class="accommodation-section">
        <h2>Available Accommodation</h2>
        <div class="accommodation-cards">
            <!-- Single Accommodation Card -->
            <div class="accommodation-card">
                <div class="card-header">
                    <h3>Luxury Suite</h3>
                    <span class="price">$350/night</span>
                </div>
                <div class="card-body">
                    <p class="description">A luxurious suite with ocean view, king-sized bed, and modern amenities.</p>
                    <ul class="amenities">
                        <li><i class="fas fa-bed"></i> 1 King Bed</li>
                        <li><i class="fas fa-wifi"></i> Free Wi-Fi</li>
                        <li><i class="fas fa-bath"></i> Private Bath</li>
                        <li><i class="fas fa-tv"></i> Flat Screen TV</li>
                    </ul>
                    <button class="btn-book">Book Now</button>
                </div>
            </div>

            <!-- Another Accommodation Card -->
            <div class="accommodation-card">
                <div class="card-header">
                    <h3>Beachfront Villa</h3>
                    <span class="price">$450/night</span>
                </div>
                <div class="card-body">
                    <p class="description">Experience ultimate relaxation with a beachfront view and private pool.</p>
                    <ul class="amenities">
                        <li><i class="fas fa-bed"></i> 2 Queen Beds</li>
                        <li><i class="fas fa-wifi"></i> Free Wi-Fi</li>
                        <li><i class="fas fa-swimming-pool"></i> Private Pool</li>
                        <li><i class="fas fa-tv"></i> Flat Screen TV</li>
                    </ul>
                    <button class="btn-book">Book Now</button>
                </div>
            </div>
            <!-- Another Accommodation Card -->
            <div class="accommodation-card">
                <div class="card-header">
                    <h3>Mountain Retreat</h3>
                    <span class="price">$275/night</span>
                </div>
                <div class="card-body">
                    <p class="description">A cozy mountain retreat with a fireplace, perfect for a peaceful getaway.</p>
                    <ul class="amenities">
                        <li><i class="fas fa-bed"></i> 1 Queen Bed</li>
                        <li><i class="fas fa-wifi"></i> Free Wi-Fi</li>
                        <li><i class="fas fa-fire"></i> Fireplace</li>
                        <li><i class="fas fa-tv"></i> Flat Screen TV</li>
                    </ul>
                    <button class="btn-book">Book Now</button>
                </div>
            </div>

            <!-- Another Accommodation Card -->
            <div class="accommodation-card">
                <div class="card-header">
                    <h3>City Center Penthouse</h3>
                    <span class="price">$500/night</span>
                </div>
                <div class="card-body">
                    <p class="description">Stay in the heart of the city with a stunning view from the top floor.</p>
                    <ul class="amenities">
                        <li><i class="fas fa-bed"></i> 1 King Bed</li>
                        <li><i class="fas fa-wifi"></i> Free Wi-Fi</li>
                        <li><i class="fas fa-bathtub"></i> Private Bath</li>
                        <li><i class="fas fa-tv"></i> Flat Screen TV</li>
                    </ul>
                    <button class="btn-book">Book Now</button>
                </div>
            </div>

            <!-- Another Accommodation Card -->
            <div class="accommodation-card">
                <div class="card-header">
                    <h3>Rustic Cottage</h3>
                    <span class="price">$150/night</span>
                </div>
                <div class="card-body">
                    <p class="description">A charming cottage surrounded by nature, offering a peaceful escape.</p>
                    <ul class="amenities">
                        <li><i class="fas fa-bed"></i> 1 Double Bed</li>
                        <li><i class="fas fa-wifi"></i> Free Wi-Fi</li>
                        <li><i class="fas fa-fire"></i> Fireplace</li>
                        <li><i class="fas fa-tv"></i> Flat Screen TV</li>
                    </ul>
                    <button class="btn-book">Book Now</button>
                </div>
            </div>

        </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
        <p>&copy; 2024 StayLux. All rights reserved.</p>
    </footer>

</body>
</html>
