<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Payment Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: #f5f5f5;
            color: #333;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #2c3e50;
        }

        .details {
            margin-top: 20px;
        }

        .details h2 {
            color: #16a085;
        }

        .details p {
            font-size: 16px;
            line-height: 1.5;
        }

        .back-btn {
            display: block;
            margin: 20px 0;
            text-align: center;
        }

        .back-btn a {
            text-decoration: none;
            color: white;
            background: #3498db;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .back-btn a:hover {
            background: #2980b9;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Payment Confirmation</h1>

        <c:if test="${not empty booking}">
            <div class="details">
                <h2>Booking Details:</h2>
                <p><strong>Booking ID:</strong> ${booking.id}</p>
                <p><strong>Type:</strong> ${booking.vehicleType != null ? "Vehicle Booking" : "Travel Booking"}</p>
                <c:if test="${booking.vehicleType != null}">
                    <p><strong>Vehicle Type:</strong> ${booking.vehicleType}</p>
                    <p><strong>Pickup Location:</strong> ${booking.pickupLocation}</p>
                    <p><strong>Pickup Date:</strong> ${booking.pickupDate}</p>
                    <p><strong>Dropoff Date:</strong> ${booking.dropoffDate}</p>
                </c:if>
                <c:if test="${booking.destination != null}">
                    <p><strong>Destination:</strong> ${booking.destination}</p>
                    <p><strong>Number of Travelers:</strong> ${booking.numberOfTravelers}</p>
                    <p><strong>Start Date:</strong> ${booking.startDate}</p>
                    <p><strong>End Date:</strong> ${booking.endDate}</p>
                </c:if>
            </div>
        </c:if>

        <c:if test="${empty booking}">
            <p>Booking not found. Please check the details and try again.</p>
        </c:if>

        <div class="back-btn">
            <a href="/">Return to Home</a>
        </div>
    </div>
</body>
</html>
