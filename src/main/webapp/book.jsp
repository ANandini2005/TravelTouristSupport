<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Destination</title>
    <link rel="stylesheet" type="text/css" href="css/book.css">
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Book Your Trip to ${destination}</h2>
        <form action="/book" method="post">
            <input type="hidden" name="destination" value="${destination}">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" class="form-control" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="numberOfTravelers">Number of Travelers:</label>
                <input type="number" class="form-control" id="numberOfTravelers" name="numberOfTravelers" required>
            </div>
            <div class="form-group">
                <label for="startDate">Start Date:</label>
                <input type="date" class="form-control" id="startDate" name="startDate" required>
            </div>
            <div class="form-group">
                <label for="endDate">End Date:</label>
                <input type="date" class="form-control" id="endDate" name="endDate" required>
            </div>
            <div class="form-group">
                <label for="accommodationType">Accommodation Type:</label>
                <select class="form-control" id="accommodationType" name="accommodationType">
                    <option value="Budget">Budget</option>
                    <option value="Luxury">Luxury</option>
                    <option value="Standard">Standard</option>
                </select>
            </div>
            <div class="form-group">
                <label for="travelPreferences">Travel Preferences:</label>
                <input type="text" class="form-control" id="travelPreferences" name="travelPreferences">
            </div>
            <div class="form-group">
                <label for="specialRequirements">Special Requirements:</label>
                <textarea class="form-control" id="specialRequirements" name="specialRequirements"></textarea>
            </div>
            <c:if test="${not empty errorMessage}">
    <div class="alert alert-danger">
        ${errorMessage}
    </div>
</c:if>
            
            <button type="submit" class="btn btn-primary">Submit Booking</button>
        </form>
    </div>
</body>
</html>
