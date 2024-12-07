<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Family Packages</title>
    <link rel="stylesheet" href="css/family.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar">
        <a class="navbar-brand" href="/">Travel Portal</a>
        <ul class="nav-links">
            <li><a href="/home">Home</a></li>
            <li><a href="/adventure">Adventure</a></li>
            <li><a href="/beach">Beach</a></li>
            <li><a href="/profile?username=${username}">Profile</a></li>
            <li><a href="/logout">Logout</a></li>
        </ul>
    </nav>

    <!-- Hero Section -->
    <header class="hero-section">
        <div class="hero-content">
            <h1>Discover Family Packages</h1>
            <p>Make unforgettable memories with our curated family vacation experiences.</p>
        </div>
    </header>

    <!-- Family Packages Section -->
    <section class="packages container">
        <h2>Our Top Picks for Family Getaways</h2>
        <div class="package-cards">
            <!-- Package 1 -->
            <div class="card">
                <i class="fas fa-landmark card-icon"></i>
                <h3 class="card-title">Historical Explorations</h3>
                <p class="card-description">Visit world-famous historical sites, enjoy educational tours, and immerse the whole family in rich cultural experiences.</p>
                <ul class="card-details">
                    <li><i class="fas fa-calendar-alt"></i> Duration: 7 Days</li>
                    <li><i class="fas fa-users"></i> Ideal for families with kids aged 8+</li>
                    <li><i class="fas fa-map-marker-alt"></i> Destinations: Rome, Athens, Cairo</li>
                    <li><i class="fas fa-dollar-sign"></i> Starting from $2,500 per family</li>
                </ul>
                <button class="btn-details">Learn More</button>
            </div>

            <!-- Package 2 -->
            <div class="card">
                <i class="fas fa-umbrella-beach card-icon"></i>
                <h3 class="card-title">Beach Bliss Retreat</h3>
                <p class="card-description">Relax and recharge with your loved ones on serene beaches with family-friendly activities and amenities.</p>
                <ul class="card-details">
                    <li><i class="fas fa-calendar-alt"></i> Duration: 5 Days</li>
                    <li><i class="fas fa-users"></i> Ideal for all ages</li>
                    <li><i class="fas fa-map-marker-alt"></i> Destinations: Hawaii, Maldives, Bali</li>
                    <li><i class="fas fa-dollar-sign"></i> Starting from $3,000 per family</li>
                </ul>
                <button class="btn-details">Learn More</button>
            </div>

            <!-- Package 3 -->
            <div class="card">
                <i class="fas fa-tree card-icon"></i>
                <h3 class="card-title">Nature & Wildlife Safari</h3>
                <p class="card-description">Experience the thrill of a safari with the family, with guided tours through national parks and wildlife reserves.</p>
                <ul class="card-details">
                    <li><i class="fas fa-calendar-alt"></i> Duration: 6 Days</li>
                    <li><i class="fas fa-users"></i> Ideal for kids aged 10+</li>
                    <li><i class="fas fa-map-marker-alt"></i> Destinations: Kenya, South Africa, Amazon</li>
                    <li><i class="fas fa-dollar-sign"></i> Starting from $3,500 per family</li>
                </ul>
                <button class="btn-details">Learn More</button>
            </div>

            <!-- Package 4 -->
            <div class="card">
                <i class="fas fa-mountain card-icon"></i>
                <h3 class="card-title">Mountain Adventure</h3>
                <p class="card-description">Go on an adventurous family hiking trip through the mountains, exploring scenic trails and enjoying outdoor activities.</p>
                <ul class="card-details">
                    <li><i class="fas fa-calendar-alt"></i> Duration: 7 Days</li>
                    <li><i class="fas fa-users"></i> Ideal for families with teens</li>
                    <li><i class="fas fa-map-marker-alt"></i> Destinations: Swiss Alps, Rockies, Himalayas</li>
                    <li><i class="fas fa-dollar-sign"></i> Starting from $2,200 per family</li>
                </ul>
                <button class="btn-details">Learn More</button>
            </div>

            <!-- Package 5 -->
            <div class="card">
                <i class="fas fa-water card-icon"></i>
                <h3 class="card-title">Waterpark Fun</h3>
                <p class="card-description">Enjoy an action-packed family vacation at one of the best waterparks, with thrilling water slides and splash zones.</p>
                <ul class="card-details">
                    <li><i class="fas fa-calendar-alt"></i> Duration: 4 Days</li>
                    <li><i class="fas fa-users"></i> Ideal for families with kids</li>
                    <li><i class="fas fa-map-marker-alt"></i> Destinations: Orlando, Dubai, Paris</li>
                    <li><i class="fas fa-dollar-sign"></i> Starting from $1,800 per family</li>
                </ul>
                <button class="btn-details">Learn More</button>
            </div>

            <!-- Package 6 -->
            <div class="card">
                <i class="fas fa-cogs card-icon"></i>
                <h3 class="card-title">Science & Discovery Tour</h3>
                <p class="card-description">Visit science museums and innovation hubs, perfect for families looking to ignite curiosity in their children.</p>
                <ul class="card-details">
                    <li><i class="fas fa-calendar-alt"></i> Duration: 6 Days</li>
                    <li><i class="fas fa-users"></i> Ideal for curious kids aged 8+</li>
                    <li><i class="fas fa-map-marker-alt"></i> Destinations: London, New York, Tokyo</li>
                    <li><i class="fas fa-dollar-sign"></i> Starting from $2,800 per family</li>
                </ul>
                <button class="btn-details">Learn More</button>
            </div>

            <!-- Package 7 -->
            <div class="card">
                <i class="fas fa-snowflake card-icon"></i>
                <h3 class="card-title">Winter Wonderland</h3>
                <p class="card-description">Explore the magical winter destinations, enjoy skiing, snowboarding, and winter sports with your family.</p>
                <ul class="card-details">
                    <li><i class="fas fa-calendar-alt"></i> Duration: 5 Days</li>
                    <li><i class="fas fa-users"></i> Ideal for all ages</li>
                    <li><i class="fas fa-map-marker-alt"></i> Destinations: Aspen, Zurich, Whistler</li>
                    <li><i class="fas fa-dollar-sign"></i> Starting from $3,200 per family</li>
                </ul>
                <button class="btn-details">Learn More</button>
            </div>

        </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
        <p>© 2024 Travel Portal. All Rights Reserved.</p>
    </footer>
</body>
</html>
