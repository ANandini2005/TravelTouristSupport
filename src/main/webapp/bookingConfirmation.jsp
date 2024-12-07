<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Confirmation</title>
    <link rel="stylesheet" type="text/css" href="css/book.css">
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Booking Confirmation</h2>
        <p>Thank you for booking your trip to <strong>${booking.destination}</strong>!</p>
        <p>Here are your booking details:</p>
        <ul>
            <li>Username: ${booking.username}</li>
            <li>Number of Travelers: ${booking.numberOfTravelers}</li>
            <li>Travel Dates: ${booking.startDate} to ${booking.endDate}</li>
            <li>Accommodation Type: ${booking.accommodationType}</li>
            <li>Travel Preferences: ${booking.travelPreferences}</li>
            <li>Special Requirements: ${booking.specialRequirements}</li>
        </ul>
        <a href="/destinations" class="btn btn-primary">Back to Destinations</a>
    </div>
</body>
</html>
