<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Travel Packages</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="css/travel.css">
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
                    <a class="nav-link" href="/accommodations">Accommodation</a>
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
        <h1>Discover Our Exclusive Travel Packages</h1>
        <p>Explore the world with our curated travel packages, designed to offer the best experience.</p>
    </section>

    <!-- Travel Packages Section -->
    <section class="travel-packages-section">
        <h2>Our Featured Travel Packages</h2>
        <div class="package-cards">
            <!-- Package Card 1 -->
            <div class="package-card">
                <div class="card-header">
                    <h3>Paris Getaway</h3>
                    <span class="price">$1,200</span>
                </div>
                <div class="card-body">
                    <p class="description">Enjoy a 5-day trip to Paris, including airfare, hotel stay, and a guided city tour.</p>
                    <ul class="features">
                        <li><i class="fas fa-plane"></i> Round-trip Airfare</li>
                        <li><i class="fas fa-bed"></i> 4-star Hotel Stay</li>
                        <li><i class="fas fa-map-marker-alt"></i> Guided City Tour</li>
                        <li><i class="fas fa-utensils"></i> All Meals Included</li>
                    </ul>
                    <button class="btn-book">Book Now</button>
                </div>
            </div>

            <!-- Package Card 2 -->
            <div class="package-card">
                <div class="card-header">
                    <h3>Caribbean Cruise</h3>
                    <span class="price">$1,500</span>
                </div>
                <div class="card-body">
                    <p class="description">Set sail on a 7-day luxury Caribbean cruise with all-inclusive amenities.</p>
                    <ul class="features">
                        <li><i class="fas fa-ship"></i> 7-day Cruise</li>
                        <li><i class="fas fa-bed"></i> All-Inclusive Accommodations</li>
                        <li><i class="fas fa-wine-glass-alt"></i> Unlimited Drinks</li>
                        <li><i class="fas fa-utensils"></i> Gourmet Dining</li>
                    </ul>
                    <button class="btn-book">Book Now</button>
                </div>
            </div>

            <!-- Package Card 3 -->
            <div class="package-card">
                <div class="card-header">
                    <h3>Safari Adventure</h3>
                    <span class="price">$2,000</span>
                </div>
                <div class="card-body">
                    <p class="description">Embark on a thrilling safari in Africa, with guided tours and luxury lodges.</p>
                    <ul class="features">
                        <li><i class="fas fa-tractor"></i> Safari Tour</li>
                        <li><i class="fas fa-bed"></i> Luxury Lodging</li>
                        <li><i class="fas fa-camera"></i> Photography Sessions</li>
                        <li><i class="fas fa-hiking"></i> Adventure Activities</li>
                    </ul>
                    <button class="btn-book">Book Now</button>
                </div>
            </div>

            <!-- Package Card 4 -->
            <div class="package-card">
                <div class="card-header">
                    <h3>Tokyo Experience</h3>
                    <span class="price">$1,800</span>
                </div>
                <div class="card-body">
                    <p class="description">A 6-day journey through Tokyo, exploring the city’s history, culture, and modern attractions.</p>
                    <ul class="features">
                        <li><i class="fas fa-plane"></i> Round-trip Airfare</li>
                        <li><i class="fas fa-bed"></i> 4-star Hotel Stay</li>
                        <li><i class="fas fa-map-marker-alt"></i> City Tours</li>
                        <li><i class="fas fa-shopping-bag"></i> Shopping Spree</li>
                    </ul>
                    <button class="btn-book">Book Now</button>
                </div>
            </div>

            <!-- Add more package cards as needed -->
        </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
        <p>&copy; 2024 TravelX. All rights reserved.</p>
    </footer>

</body>
</html>
