<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vehicle Rentals</title>
    <link rel="stylesheet" href="css/carRent.css"> <!-- Link to external CSS file -->
</head>
<body>

    <!-- Header -->
    <header class="header">
        <h1>Traveling Vehicle Rentals</h1>
        <p>Your trusted partner for a smooth journey</p>
    </header>

    <!-- Main Content Section -->
    <main>
        <section class="vehicle-selection">
            <h2>Select Your Vehicle</h2>
           <form action="${pageContext.request.contextPath}/processBooking" method="POST">
                <label for="vehicleType">Choose Vehicle Type:</label>
                <select id="vehicleType" name="vehicleType">
                    <option value="car">Car</option>
                    <option value="van">Van</option>
                    <option value="suv">SUV</option>
                    <option value="motorcycle">Motorcycle</option>
                </select>

                <label for="pickupLocation">Pick-up Location:</label>
                <input type="text" id="pickupLocation" name="pickupLocation" required>

                <label for="pickupDate">Pick-up Date:</label>
                <input type="date" id="pickupDate" name="pickupDate" required>

                <label for="dropoffDate">Drop-off Date:</label>
                <input type="date" id="dropoffDate" name="dropoffDate" required>

                <button type="submit">Book Now</button>
            </form>
        </section>

        <!-- Online Booking Links -->
        <section class="online-booking">
            <h2>Book through Popular Online Platforms</h2>
            <ul>
                <li><a href="https://www.rentalcars.com" target="_blank">RentalCars.com</a></li>
                <li><a href="https://www.enterprise.com" target="_blank">Enterprise Rent-A-Car</a></li>
                <li><a href="https://www.hertz.com" target="_blank">Hertz Car Rentals</a></li>
                <li><a href="https://www.avis.com" target="_blank">Avis Car Rentals</a></li>
            </ul>
        </section>
    </main>

    <!-- Footer -->
    <footer class="footer">
        <p>&copy; 2024 Traveling Vehicle Rentals. All rights reserved.</p>
    </footer>

</body>
</html>
