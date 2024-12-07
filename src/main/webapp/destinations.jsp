<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Destinations</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/des.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    
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
                    <a class="nav-link" href="/profile?username=${username}">Profile</a>
                </li>
                <li class="nav-item active">
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
    <header class="hero-section text-white text-center py-5" style="background-image: url('images/ls.jpeg'); background-size: cover;">
        <h1>Discover Popular Destinations</h1>
        <p>Explore and book amazing travel destinations around the world!</p>
    </header>

 <!-- Destinations Section with Carousel -->
<div class="container my-5">
    <h2 class="text-center">Top Destinations</h2>
    <div id="destinationCarousel" class="carousel slide">
        <div class="carousel-inner">
            <!-- First Slide (First 4 Destinations) -->
            <div class="carousel-item active">
                <div class="row">
                    <div class="col-md-3 my-3">
                        <div class="card shadow">
                            <img src="images/paris.jpg" class="card-img-top" alt="Paris" data-toggle="modal" data-target="#videoModal" data-video-id="GljTvdEDqJM">
                            <div class="card-body">
                                <h5 class="card-title">Paris, France</h5>
                                <p class="card-text">
                                    Explore the city of love and lights.
                                    <i class="fas fa-heart"></i>
                                </p>
                                <a href="/book?destination=paris" class="btn btn-primary">Book Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 my-3">
                        <div class="card shadow">
                            <img src="images/japan.jpg" class="card-img-top" alt="Tokyo"data-toggle="modal" data-target="#videoModal" data-video-id="CxuiFNYnEr4">
                            <div class="card-body">
                                <h5 class="card-title">Tokyo, Japan</h5>
                                <p class="card-text">
                                    Discover the fusion of tradition and technology.
                                    <i class="fas fa-globe"></i>
                                </p>
                                <a href="/book?destination=tokyo" class="btn btn-primary">Book Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 my-3">
                        <div class="card shadow">
                            <img src="images/newyork.jpeg" class="card-img-top" alt="New York"data-toggle="modal" data-target="#videoModal" data-video-id="WLSnrXEtrT4">
                            <div class="card-body">
                                <h5 class="card-title">New York, USA</h5>
                                <p class="card-text">
                                    The city that never sleeps.
                                    <i class="fas fa-city"></i>
                                </p>
                                <a href="/book?destination=newyork" class="btn btn-primary">Book Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 my-3">
                        <div class="card shadow">
                            <img src="images/sydney.jpg" class="card-img-top" alt="Sydney"data-toggle="modal" data-target="#videoModal" data-video-id="OrIDTJH2ZZM">
                            <div class="card-body">
                                <h5 class="card-title">Sydney, Australia</h5>
                                <p class="card-text">
                                    Visit the iconic Sydney Opera House.
                                    <i class="fas fa-anchor"></i>
                                </p>
                                <a href="/book?destination=sydney" class="btn btn-primary">Book Now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Second Slide (Next 4 Destinations) -->
            <div class="carousel-item">
                <div class="row">
                    <div class="col-md-3 my-3">
                        <div class="card shadow">
                            <img src="images/rome.jpg" class="card-img-top" alt="Rome"data-toggle="modal" data-target="#videoModal" data-video-id="XBbzOKhG1bQ">
                            <div class="card-body">
                                <h5 class="card-title">Rome, Italy</h5>
                                <p class="card-text">
                                    Discover ancient ruins and iconic architecture.
                                    <i class="fas fa-landmark"></i>
                                </p>
                                <a href="/book?destination=rome" class="btn btn-primary">Book Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 my-3">
                        <div class="card shadow">
                            <img src="images/london.jpg" class="card-img-top" alt="London"data-toggle="modal" data-target="#videoModal" data-video-id="7vqfjBZ9864">
                            <div class="card-body">
                                <h5 class="card-title">London, UK</h5>
                                <p class="card-text">
                                    Explore the historical and modern city of London.
                                    <i class="fas fa-crown"></i>
                                </p>
                                <a href="/book?destination=london" class="btn btn-primary">Book Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 my-3">
                        <div class="card shadow">
                            <img src="images/dubai.jpg" class="card-img-top" alt="Dubai"data-toggle="modal" data-target="#videoModal" data-video-id="82zVjMudli8">
                            <div class="card-body">
                                <h5 class="card-title">Dubai, UAE</h5>
                                <p class="card-text">
                                    Experience luxury in the city of skyscrapers.
                                    <i class="fas fa-building"></i>
                                </p>
                                <a href="/book?destination=dubai" class="btn btn-primary">Book Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 my-3">
                        <div class="card shadow">
                            <img src="images/capetown.webp" class="card-img-top" alt="Cape Town"data-toggle="modal" data-target="#videoModal" data-video-id="srP7RFVdjWc">
                            <div class="card-body">
                                <h5 class="card-title">Cape Town, South Africa</h5>
                                <p class="card-text">
                                    Enjoy stunning views and natural beauty.
                                    <i class="fas fa-mountain"></i>
                                </p>
                                <a href="/book?destination=capetown" class="btn btn-primary">Book Now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

       <!-- Carousel Controls (Manual Only) -->
        <a class="carousel-control-prev custom-control" href="#destinationCarousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next custom-control" href="#destinationCarousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>


    <div class="container my-5">
    <h2 class="text-center">Featured Trips</h2>
    <div class="row">
        <!-- Trip Card 1 (African Safari Adventure) -->
        <div class="col-md-6 my-3">
            <div class="card shadow">
                <img src="images/afsa.webp" class="card-img-top" alt="African Safari">
                <div class="card-body">
                    <h5 class="card-title">African Safari Adventure</h5>
                    <p class="card-text">Join us on an unforgettable adventure through Africa's breathtaking landscapes and wildlife.</p>
                    <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#tripModal" 
                       data-title="African Safari Adventure"
                       data-description="Experience the thrill of an African Safari. Witness the incredible wildlife, vast savannahs, and stunning landscapes. Our expert guides will ensure you have an unforgettable adventure in Africa's most famous national parks.">
                       View Details
                    </a>
                </div>
            </div>
        </div>

        <!-- Trip Card 2 (Caribbean Cruise) -->
        <div class="col-md-6 my-3">
            <div class="card shadow">
                <img src="images/cc.jpg" class="card-img-top" alt="Caribbean Cruise">
                <div class="card-body">
                    <h5 class="card-title">Caribbean Cruise</h5>
                    <p class="card-text">Relax and unwind on a luxury cruise through the beautiful Caribbean islands.</p>
                    <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#tripModal" 
                       data-title="Caribbean Cruise"
                       data-description="Sail through the crystal-clear waters of the Caribbean. Enjoy luxurious amenities, gourmet dining, and beautiful island stops. Our cruise offers the ultimate relaxation and adventure combo, all while experiencing the vibrant culture of the Caribbean.">
                       View Details
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

    
    <!-- Modal for YouTube Video -->
<div class="modal fade" id="videoModal" tabindex="-1" role="dialog" aria-labelledby="videoModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="videoModalLabel">Destination Video</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="embed-responsive embed-responsive-16by9">
                    <iframe class="embed-responsive-item" id="videoFrame" src="" allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </div>
</div>
    
<!-- Modal for Trip Details -->
<div class="modal fade" id="tripModal" tabindex="-1" role="dialog" aria-labelledby="tripModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="tripModalLabel">Trip Details</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <h3 id="tripTitle"></h3>
                <p id="tripDescription"></p>
            </div>
        </div>
    </div>
</div>
    <!-- Footer -->
    <footer class="bg-primary text-white text-center py-3">
        <p>© 2024 Travel Portal. All Rights Reserved.</p>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
<script>
        // JavaScript to load video based on image click
        $('#videoModal').on('show.bs.modal', function (event) {
            var button = $(event.relatedTarget); // Image that was clicked
            var videoId = button.data('video-id'); // Extract video ID from data attribute
            var videoUrl = "https://www.youtube.com/embed/" + videoId; // Construct YouTube URL
            var modal = $(this);
            modal.find('#videoFrame').attr('src', videoUrl); // Set iframe src to YouTube video
        });

        // Stop the video when modal is closed
        $('#videoModal').on('hidden.bs.modal', function () {
            var modal = $(this);
            modal.find('#videoFrame').attr('src', ''); // Remove video URL
        });
    </script>
    
    <script>
    // JavaScript to populate modal with trip details when "View Details" is clicked
    $('#tripModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget); // Button that triggered the modal
        var title = button.data('title'); // Extract trip title
        var description = button.data('description'); // Extract trip description

        var modal = $(this);
        modal.find('#tripTitle').text(title); // Set the trip title
        modal.find('#tripDescription').text(description); // Set the description
    });
</script>
</body>
</html>
