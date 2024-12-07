<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Travel Portal Home</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="css/style.css"> <!-- Link to the CSS file -->
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
                <a class="nav-link" href="#map-section">Search Map Location</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/destinations">Destinations</a> <!-- New Destinations Link -->
            </li>
           <li class="nav-item">
           <a class="nav-link" href="/myBookings">My Bookings</a></li> 
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



    <!-- Hero Section and Content Wrapper -->
    <div class="content">
        <header class="bg-light text-center py-5">
            <div class="container">
                <h1 class="display-4">Welcome to the Travel Portal</h1>
                <p class="lead">Discover amazing destinations, plan your trips, and more!</p>
                <a href="/tourismContent" class="btn btn-primary mt-3">Explore Now</a>
            </div>
        </header>
        

        
        <!-- Carousel for Popular Destinations -->
        <section class="container my-5">
            <h2 class="text-center mb-4">Popular Destinations</h2>
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="images/paris.jpg" class="d-block w-100 feature-img" alt="Destination 1">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Paris, France</h5>
                            <p>The City of Light awaits you with its iconic Eiffel Tower and charming cafes.</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="images/green.jpg" class="d-block w-100 feature-img" alt="Destination 2">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Tokyo, Japan</h5>
                            <p>Experience the blend of tradition and modernity in Japan's bustling capital.</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="images/sea.jpg" class="d-block w-100 feature-img" alt="Destination 3">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Maldives</h5>
                            <p>Relax in paradise with stunning beaches, crystal-clear waters, and luxury resorts.</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="images/leh.jpg" class="d-block w-100 feature-img" alt="Destination 3">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Ladhak</h5>
                            <p>Relax in paradise with stunning beaches, crystal-clear waters, and luxury resorts.</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="images/khaj.jpg" class="d-block w-100 feature-img" alt="Destination 3">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Venom</h5>
                            <p>Relax in paradise with stunning beaches, crystal-clear waters, and luxury resorts.</p>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </section>
        
        <!-- Types of Tour Packages Section -->
<section class="container my-5">
    <h2 class="text-center mb-4">Types of Tour Packages</h2>
    <div class="row">
        <div class="col-md-4 text-center">
            <a href="/adventureTours" class="text-decoration-none">
                <i class="fas fa-hiking fa-3x mb-3 text-primary"></i>\
            </a>
                <h4>Adventure Tours</h4>
                <p>Embark on thrilling adventures including trekking, rafting, and mountain climbing.</p>
        </div>
        <div class="col-md-4 text-center">
            <a href="/cityTours" class="text-decoration-none">
                <i class="fas fa-city fa-3x mb-3 text-primary"></i>
            </a>
                <h4>City Tours</h4>
                <p>Explore famous cities with guided tours and learn about their rich history and culture.</p>
        </div>
        <div class="col-md-4 text-center">
            <a href="/beachVacations" class="text-decoration-none">
                <i class="fas fa-umbrella-beach fa-3x mb-3 text-primary"></i>
           </a>
                <h4>Beach Vacations</h4>
                <p>Relax on beautiful beaches, soak up the sun, and enjoy water sports and activities.</p>
        </div>
        <div class="col-md-4 text-center mt-4">
            <a href="/romanticGetaways" class="text-decoration-none">
                <i class="fas fa-heart fa-3x mb-3 text-primary"></i>
            </a>
                <h4>Romantic Getaways</h4>
                <p>Perfect for couples, enjoy secluded destinations with luxurious accommodations.</p>
        </div>
        <div class="col-md-4 text-center mt-4">
            <a href="/winterEscapes" class="text-decoration-none">
                <i class="fas fa-skiing fa-3x mb-3 text-primary"></i>
              </a>
                <h4>Winter Escapes</h4>
                <p>Travel to snowy destinations for skiing, snowboarding, and winter fun.</p>
        </div>
        <div class="col-md-4 text-center mt-4">
            <a href="/familyPackages" class="text-decoration-none">
                <i class="fas fa-users fa-3x mb-3 text-primary"></i>
              </a>
                <h4>Family Packages</h4>
                <p>Ideal for families, with activities and accommodations for all ages.</p>
        </div>
    </div>
</section>

<!-- Features Section -->
<section class="container my-5">
    <div class="row">
        <div class="col-md-4 text-center">
            <a href="/destinations" class="text-decoration-none">
                <i class="fas fa-map-marked-alt fa-3x mb-3 text-primary"></i>
           </a>
                <h4>Destinations</h4>
                <p>Find the best destinations across the world and explore travel tips and guides.</p>
          
        </div>
        <div class="col-md-4 text-center">
            <a href="/travelPackages" class="text-decoration-none">
                <i class="fas fa-plane-departure fa-3x mb-3 text-primary"></i>
              </a>
                <h4>Travel Packages</h4>
                <p>Get exclusive travel packages and enjoy your trips with ease.</p>
        </div>
        <div class="col-md-4 text-center">
            <a href="/accommodation" class="text-decoration-none">
                <i class="fas fa-hotel fa-3x mb-3 text-primary"></i>
              </a>
                <h4>Accommodation</h4>
                <p>Book comfortable and budget-friendly accommodations for your trips.</p>
        </div>
        <!-- New features -->
        <div class="col-md-4 text-center mt-4">
            <a href="/touristGuide" class="text-decoration-none">
                <i class="fas fa-passport fa-3x mb-3 text-primary"></i>
           </a>
                <h4>Tourist Guides</h4>
                <p>Find experienced tourist guides to help you explore destinations with local expertise and insights.</p>
           
        </div>
        <div class="col-md-4 text-center mt-4">
            <a href="/vehicle_rentals" class="text-decoration-none">
                <i class="fas fa-car fa-3x mb-3 text-primary"></i>
             </a>
                <h4>Car Rentals</h4>
                <p>Rent vehicles for your travel convenience with competitive pricing options.</p>
        </div>
        <div class="col-md-4 text-center mt-4">
            <a href="/support" class="text-decoration-none">
                <i class="fas fa-concierge-bell fa-3x mb-3 text-primary"></i>
            </a>
                <h4>24/7 Support</h4>
                <p>Our dedicated support team is here to assist you at any time during your trip.</p>
        </div>
    </div>
</section>

                    <!-- Map Section -->
<section class="container my-5" id="map-section">
    <h2 class="text-center mb-4">Find Your Route</h2>
    <div class="map-responsive">
        <iframe
            src="https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d3151.8354345094077!2d144.96305771572488!3d-37.8162791797519!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e0!4m3!3m2!1d-37.8162792!2d144.9640574!4m3!3m2!1d-37.8102793!2d144.9640654!5e0!3m2!1sen!2sau!4v1615045738835!5m2!1sen!2sau"
            width="600"
            height="450"
            style="border:0;"
            allowfullscreen=""
            loading="lazy">
        </iframe>
    </div>
</section>

    <!-- Footer -->
    <footer class="bg-primary text-white text-center py-3">
        <p>© 2024 Travel Portal. All Rights Reserved.</p>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
