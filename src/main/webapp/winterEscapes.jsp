<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Winter Escapes</title>
    <link rel="stylesheet" href="css/winter.css">
</head>
<body>
    <!-- Header Section with a Winter Banner -->
    <div class="winter-banner">
        <h1>Embrace the Magic of Winter Escapes</h1>
        <p>Discover snowy landscapes and cozy hideaways perfect for a winter retreat.</p>
    </div>

    <!-- Featured Winter Destinations -->
    <div class="destinations">
        <div class="destination-card">
            <img src="images/snowy.jpg" alt="Snowy Mountain">
            <h2>Snowy Mountain Lodge</h2>
            <p>Enjoy breathtaking views and cozy evenings by the fireplace.</p>
            <a href="/winterGetawayDetails?packageId=1" class="btn">Warm Up Here</a>
        </div>
        
        <div class="destination-card">
            <img src="images/cozy.jpg" alt="Cozy Cabin">
            <h2>Cozy Woodland Cabin</h2>
            <p>Find tranquility in a secluded cabin surrounded by winter wonder.</p>
            <a href="/winterGetawayDetails?packageId=2" class="btn">Escape to Serenity</a>
        </div>

        <div class="destination-card">
            <img src="images/frozen.jpg" alt="Frozen Lake">
            <h2>Frozen Lake Resort</h2>
            <p>Experience ice-skating and hot cocoa evenings at a lakeside resort.</p>
            <a href="/winterGetawayDetails?packageId=3" class="btn">Discover the Frost</a>
        </div>
    </div>
</body>
</html>
