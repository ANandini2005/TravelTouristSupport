<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Adventure Tours</title>
    <link rel="stylesheet" href="css/adventure.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>
<body>
    <!-- Header Section -->
    <header class="header">
    <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="/home">Home</a>
            </li>
            </ul>
        <h1 class="header-title">Adventure Tours</h1>
        <p class="header-subtitle">Experience the thrill of a lifetime with our exciting adventure packages.</p>
    </header>

    <!-- Adventure Tours Section -->
    <section class="adventure-tours container">
        <div class="tour-card">
            <i class="fas fa-mountain fa-3x tour-icon"></i>
            <h2 class="tour-title">Mountain Trekking</h2>
            <p class="tour-description">Join our mountain trekking tours to conquer the highest peaks and witness breathtaking views.</p>
            <button onclick="openModal('trekking')" class="btn-details">View Details</button>
        </div>
        <div class="tour-card">
            <i class="fas fa-water fa-3x tour-icon"></i>
            <h2 class="tour-title">White Water Rafting</h2>
            <p class="tour-description">Experience the thrill of rafting in fast-flowing rivers with our expert guides.</p>
            <button onclick="openModal('rafting')" class="btn-details">View Details</button>
        </div>
        <div class="tour-card">
            <i class="fas fa-biking fa-3x tour-icon"></i>
            <h2 class="tour-title">Mountain Biking</h2>
            <p class="tour-description">Explore rugged terrains on two wheels with our guided mountain biking tours.</p>
            <button onclick="openModal('biking')" class="btn-details">View Details</button>
        </div>
        <div class="tour-card">
            <i class="fas fa-campground fa-3x tour-icon"></i>
            <h2 class="tour-title">Camping Adventures</h2>
            <p class="tour-description">Enjoy an overnight camping experience under the stars with safety and comfort.</p>
            <button onclick="openModal('camping')" class="btn-details">View Details</button>
        </div>
        <div class="tour-card">
            <i class="fas fa-parachute-box fa-3x tour-icon"></i>
            <h2 class="tour-title">Zip Lining</h2>
            <p class="tour-description">Fly across scenic landscapes with our zip-lining adventures, perfect for adrenaline lovers.</p>
            <button onclick="openModal('ziplining')" class="btn-details">View Details</button>
        </div>

        <div class="tour-card">
            <i class="fas fa-wave-square fa-3x tour-icon"></i>
            <h2 class="tour-title">Surfing</h2>
            <p class="tour-description">Catch waves and experience the thrill of surfing on beautiful beaches.</p>
            <button onclick="openModal('surfing')" class="btn-details">View Details</button>
        </div>
        <div class="tour-card">
            <i class="fas fa-user-alt-slash fa-3x tour-icon"></i>
            <h2 class="tour-title">Bungee Jumping</h2>
            <p class="tour-description">Jump from heights with our safe and exhilarating bungee jumping experience.</p>
            <button onclick="openModal('bungee')" class="btn-details">View Details</button>
        </div>
        <div class="tour-card">
            <i class="fas fa-water fa-3x tour-icon"></i>
            <h2 class="tour-title">Scuba Diving</h2>
            <p class="tour-description">Explore the underwater world with our thrilling scuba diving adventures.</p>
            <button onclick="openModal('scuba')" class="btn-details">View Details</button>
        </div>
        <div class="tour-card">
            <i class="fas fa-parachute-box fa-3x tour-icon"></i>
            <h2 class="tour-title">Paragliding</h2>
            <p class="tour-description">Soar through the skies and enjoy breathtaking views with paragliding.</p>
            <button onclick="openModal('paragliding')" class="btn-details">View Details</button>
        </div>
    </section>

    <!-- Modal Section -->
    <div id="modal" class="modal">
        <div class="modal-content">
            <span class="close-btn" onclick="closeModal()">&times;</span>
            <h2 id="modal-title"></h2>
            <img id="modal-image" src="" alt="Adventure Tour Image" class="modal-image">
            <p id="modal-description"></p>
        </div>
    </div>

    <!-- Footer Section -->
    <footer class="footer">
        <p>&copy; 2024 Adventure Tours. All Rights Reserved.</p>
    </footer>

    <script>
        function openModal(tour) {
            const modal = document.getElementById("modal");
            const title = document.getElementById("modal-title");
            const description = document.getElementById("modal-description");
            const image = document.getElementById("modal-image");

            if (tour === "trekking") {
                title.innerText = "Mountain Trekking";
                description.innerText = "Experience the thrill of trekking through mountains with expert guides.";
                image.src = "images/mountrek.jpg";
            } else if (tour === "rafting") {
                title.innerText = "White Water Rafting";
                description.innerText = "Exhilarating white water rafting guided by experienced instructors.";
                image.src = "images/whitewater.jpg";
            } else if (tour === "biking") {
                title.innerText = "Mountain Biking";
                description.innerText = "Mountain biking on rugged trails for adventure seekers.";
                image.src = "images/mountbike.jpg";
            } else if (tour === "camping") {
                title.innerText = "Camping Adventures";
                description.innerText = "Escape the city with our camping adventures.";
                image.src = "images/camp.jpg";
            } else if (tour === "ziplining") {
                title.innerText = "Zip Lining";
                description.innerText = "Fly across scenic landscapes with our zip-lining adventures.";
                image.src = "images/ziplining.jpg";
            } else if (tour === "surfing") {
                title.innerText = "Surfing";
                description.innerText = "Catch waves on beautiful beaches with our surfing experiences.";
                image.src = "images/surfing.webp";
            } else if (tour === "bungee") {
                title.innerText = "Bungee Jumping";
                description.innerText = "Jump from thrilling heights with safe bungee jumping.";
                image.src = "images/bungee.jpeg";
            } else if (tour === "scuba") {
                title.innerText = "Scuba Diving";
                description.innerText = "Explore the underwater world with scuba diving.";
                image.src = "images/scuba.jpg";
            } else if (tour === "paragliding") {
                title.innerText = "Paragliding";
                description.innerText = "Soar through the skies with paragliding.";
                image.src = "images/paragliding.jpg";
            }

            modal.style.display = "block";
        }

        function closeModal() {
            document.getElementById("modal").style.display = "none";
        }

        window.onclick = function(event) {
            const modal = document.getElementById("modal");
            if (event.target === modal) {
                closeModal();
            }
        }
    </script>

</body>
</html>
