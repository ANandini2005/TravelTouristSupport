<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>City Tours</title>
    <link rel="stylesheet" href="css/cityTours.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
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

    <!-- Header Section -->
    <header class="header">
        <h1>Explore City Tours</h1>
        <p>Discover beautiful cities with rich history and vibrant culture.</p>
    </header>

    <!-- Overview Section -->
    <section class="overview">
        <h2>About City Tours</h2>
        <p>Our city tours offer a unique experience to explore the most iconic cities. Enjoy guided tours, famous landmarks, and cultural insights into each destination.</p>
    </section>

    <!-- Popular Cities Section -->
 <section class="popular-cities">
    <h2>Popular Cities</h2>
    <div class="city-grid">
        <!-- City Card 1 -->
        <div class="city-card">
            <img src="images/paris.jpg" alt="Paris">
            <h3>Paris</h3>
            <p>Explore the city of love, with landmarks like the Eiffel Tower and Louvre Museum.</p>
            <a href="/cityTour?city=Paris" class="btn">Explore Paris</a>
        </div>

        <!-- City Card 2 -->
        <div class="city-card">
            <img src="images/rome.jpg" alt="Rome">
            <h3>Rome</h3>
            <p>Experience the ancient wonders of Rome, from the Colosseum to the Vatican.</p>
            <a href="/cityTour?city=Rome" class="btn">Explore Rome</a>
        </div>

        <!-- City Card 3 -->
        <div class="city-card">
            <img src="images/newyork.jpeg" alt="New York">
            <h3>New York</h3>
            <p>Discover the vibrant life of NYC, with Times Square, Central Park, and more.</p>
            <a href="/cityTour?city=NewYork" class="btn">Explore New York</a>
        </div>

        <!-- City Card 5 -->
<div class="city-card">
    <img src="images/london.jpg" alt="London">
    <h3>London</h3>
    <p>Explore the rich history of London, with Big Ben, the Tower of London, and more.</p>
    <a href="/cityTour?city=London" class="btn">Explore London</a>
</div>

<!-- City Card 6 -->
<div class="city-card">
    <img src="images/japan.jpg" alt="Tokyo">
    <h3>Tokyo</h3>
    <p>Discover the dynamic blend of tradition and modernity in Tokyo, from Shibuya to temples.</p>
    <a href="/cityTour?city=Tokyo" class="btn">Explore Tokyo</a>
</div>

<!-- City Card 7 (India) -->
<div class="city-card">
    <img src="images/india.jpg" alt="Delhi">
    <h3>Delhi</h3>
    <p>Explore the cultural richness of Delhi, with landmarks like the Red Fort and India Gate.</p>
    <a href="/cityTour?city=Delhi" class="btn">Explore Delhi</a>
</div>

<!-- City Card 8 -->
<div class="city-card">
    <img src="images/sydney.jpg" alt="Sydney">
    <h3>Sydney</h3>
    <p>From the iconic Sydney Opera House to stunning beaches, Sydney is full of excitement.</p>
    <a href="/cityTour?city=Sydney" class="btn">Explore Sydney</a>
</div>
<div class="city-card">
    <img src="images/barcelona.jpg" alt="Barcelona">
    <h3>Barcelona</h3>
    <p>Explore the beauty of Barcelona, from the Gaudí masterpieces to stunning beaches.</p>
    <a href="/cityTour?city=Barcelona" class="btn">Explore Barcelona</a>
</div>
<!-- City Card 11 -->
<div class="city-card">
    <img src="images/berlin.jpg" alt="Berlin">
    <h3>Berlin</h3>
    <p>Discover Berlin's rich history and modern culture, with landmarks like the Brandenburg Gate and the Berlin Wall.</p>
    <a href="/cityTour?city=Berlin" class="btn">Explore Berlin</a>
</div>

<!-- City Card 12 -->
<div class="city-card">
    <img src="images/capetown.webp" alt="Cape Town">
    <h3>Cape Town</h3>
    <p>Visit Cape Town for breathtaking views, from Table Mountain to the stunning beaches.</p>
    <a href="/cityTour?city=CapeTown" class="btn">Explore Cape Town</a>
</div>

<!-- City Card 13 -->
<div class="city-card">
    <img src="images/koyoto.jpg" alt="Kyoto">
    <h3>Kyoto</h3>
    <p>Explore the historic temples, beautiful gardens, and serene atmosphere of Kyoto in Japan.</p>
    <a href="/cityTour?city=Kyoto" class="btn">Explore Kyoto</a>
</div>

<!-- City Card 14 -->
<div class="city-card">
    <img src="images/rio.jpg" alt="Rio de Janeiro">
    <h3>Rio de Janeiro</h3>
    <p>Embrace the energy of Rio with the iconic Christ the Redeemer statue and vibrant beaches.</p>
    <a href="/cityTour?city=Rio" class="btn">Explore Rio de Janeiro</a>
</div>


        <!-- Additional City Cards -->
        <!-- Add more cards as necessary -->
    </div>
</section>

</form>
    </section>
   <!-- Call to Action Section -->
<section class="call-to-action">
    <div class="cta-content">
        <h2>Ready to Explore?</h2>
        <p>Book your city tour now and start your adventure!</p>
        <!-- Button to show the form -->
        <button id="book-tour-btn" class="btn btn-primary">Book a Tour Now</button>
        
        <!-- Booking Form (initially hidden) -->
        <form id="booking-form" action="/submitBooking" method="POST" style="display:none;">
            <div class="form-group">
                <label for="city">Select Your City</label>
                <select id="city" name="city" class="form-control">
                    <option value="Paris">Paris</option>
                    <option value="Rome">Rome</option>
                    <option value="NewYork">New York</option>
                    <option value="London">London</option>
                    <option value="Tokyo">Tokyo</option>
                    <option value="Delhi">Delhi</option>
                    <option value="Sydney">Sydney</option>
                    <option value="Barcelona">Barcelona</option>
                    <option value="Berlin">Berlin</option>
                    <option value="CapeTown">Cape Town</option>
                    <option value="Kyoto">Kyoto</option>
                    <option value="Rio">Rio de Janeiro</option>
                </select>
            </div>

            <div class="form-group">
                <label for="date">Tour Date</label>
                <input type="date" id="date" name="date" class="form-control">
            </div>

            <div class="form-group">
                <label for="name">Full Name</label>
                <input type="text" id="name" name="name" placeholder="Enter your name" class="form-control" required>
            </div>

            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" id="email" name="email" placeholder="Enter your email" class="form-control" required>
            </div>

            <button type="submit" class="btn btn-primary">Book a Tour Now</button>
        </form>
    </div>
</section>
<script>
    // Get references to the button and form elements
    const bookTourBtn = document.getElementById('book-tour-btn');
    const bookingForm = document.getElementById('booking-form');

    // Add an event listener to the button to toggle form visibility
    bookTourBtn.addEventListener('click', function() {
        // Toggle the visibility of the form
        if (bookingForm.style.display === 'none') {
            bookingForm.style.display = 'block';
            bookTourBtn.innerHTML = 'Hide Booking Form'; // Change button text when form is visible
        } else {
            bookingForm.style.display = 'none';
            bookTourBtn.innerHTML = 'Book a Tour Now'; // Reset button text when form is hidden
        }
    });
</script>

    

</body>
</html>
