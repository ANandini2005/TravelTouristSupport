<!-- bookTour.jsp -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Book a Tour</title>
    <style>
        /* Simple CSS for styling */
        .booking-form {
            width: 50%;
            margin: auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
        }
        .booking-form h2 {
            text-align: center;
        }
        .booking-form label {
            display: block;
            margin-top: 10px;
        }
        .booking-form input, .booking-form select, .booking-form button {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
        }
    </style>
</head>
<body>
    <div class="booking-form">
        <h2>Book a Tour</h2>
        <form action="/submitBooking" method="post">
            <label for="name">Full Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="tourPackage">Select Tour Package:</label>
            <select id="tourPackage" name="tourPackage">
                <option value="Adventure Tours">Adventure Tours</option>
                <option value="City Tours">City Tours</option>
                <option value="Beach Vacations">Beach Vacations</option>
                <!-- Add other options as needed -->
            </select>

            <label for="date">Date of Tour:</label>
            <input type="date" id="date" name="date" required>

            <button type="submit">Book Now</button>
        </form>
    </div>
</body>
</html>
