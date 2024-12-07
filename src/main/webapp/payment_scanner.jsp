<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment</title>
    <link rel="stylesheet" href="css/payment.css"> <!-- Link to external CSS -->
</head>
<body>
    <header>
        <h1>Complete Your Payment</h1>
    </header>

    <main>
        <section class="payment-section">
            <h2>Scan the QR Code to Pay</h2>
            <!-- Replace with your QR code image -->
            <img src="images/scanner.jpg" alt="Payment QR Code" class="qr-code-image">
            <p>Please scan the QR code using your preferred payment app to complete the transaction.</p>
        </section>

        <section>
            <form action="${pageContext.request.contextPath}/confirmPayment" method="POST">
                <input type="hidden" name="bookingId" value="${booking.id}">
                <button type="submit">Payment Completed</button>
            </form>
        </section>
    </main>

    <footer>
        <p>&copy; 2024 Traveling Vehicle Rentals. All rights reserved.</p>
    </footer>
</body>
</html>
