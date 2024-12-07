<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Bookings</title>
    <link rel="stylesheet" href="css/admin.css">
</head>
<body>
    <div class="container">
        <header>
            <h1>Manage Bookings</h1>
            <nav>
                <ul>
                    <li><a href="/adminDashboard">Back to Dashboard</a></li>
                </ul>
            </nav>
        </header>
        <main>
            <table>
                <tr>
                    <th>Booking ID</th>
                    <th>Tourist Name</th>
                    <th>Booking Date</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
                <c:forEach var="booking" items="${bookings}">
                    <tr>
                        <td>${booking.id}</td>
                        <td>${booking.user.firstName} ${booking.user.lastName}</td>
                        <td>${booking.bookingDate}</td>
                        <td>${booking.status}</td>
                        <td>
                            <a href="/editBookingStatus/${booking.id}">Edit Status</a> |
                            <a href="/viewBooking/${booking.id}">View</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </main>
    </div>
</body>
</html>
