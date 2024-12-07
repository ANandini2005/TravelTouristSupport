<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Booking Status</title>
    <link rel="stylesheet" href="css/admin.css">
</head>
<body>
    <div class="container">
        <header>
            <h1>Edit Booking Status</h1>
            <nav>
                <ul>
                    <li><a href="/manageBookings">Back to Manage Bookings</a></li>
                </ul>
            </nav>
        </header>
        <main>
            <form action="/editBookingStatus/${booking.id}" method="POST">
                <label for="status">Booking Status</label>
                <select name="status" id="status">
                    <option value="approved" ${booking.status == 'approved' ? 'selected' : ''}>Approved</option>
                    <option value="rejected" ${booking.status == 'rejected' ? 'selected' : ''}>Rejected</option>
                    <option value="pending" ${booking.status == 'pending' ? 'selected' : ''}>Pending</option>
                </select>

                <button type="submit">Update Status</button>
            </form>
        </main>
    </div>
</body>
</html>
