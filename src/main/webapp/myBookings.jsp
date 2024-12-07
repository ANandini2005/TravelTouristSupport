<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My Bookings</title>
    <style>
        body {
            font-family: 'Roboto', Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f8ff;
            color: #333;
        }

        h1 {
            text-align: center;
            color: #0078d4;
            margin-top: 20px;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            background: #fff;
        }

        th, td {
            padding: 12px 15px;
            text-align: left;
        }

        th {
            background-color: #0078d4;
            color: #ffffff;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:nth-child(odd) {
            background-color: #ffffff;
        }

        tr:hover {
            background-color: #f1f9ff;
        }

        td {
            color: #555;
        }

        p {
            text-align: center;
            font-size: 16px;
            color: #888;
        }

        /* Styling for the table border */
        table, th, td {
            border: 1px solid #ddd;
        }

        /* Add responsive design */
        @media (max-width: 768px) {
            table {
                width: 100%;
            }

            th, td {
                font-size: 14px;
                padding: 10px;
            }
        }
    </style>
</head>
<body>
    <h1>My Bookings</h1>

    <c:if test="${empty bookings}">
        <p>No bookings found.</p>
    </c:if>

    <c:if test="${not empty bookings}">
        <table>
            <thead>
                <tr>
                    <th>Destination</th>
                    <th>Start Date</th>
                    <th>End Date</th>
                    <th>Number of Travelers</th>
                    <th>Accommodation</th>
                    <th>Special Requirements</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="booking" items="${bookings}">
                    <tr>
                        <td>${booking.destination}</td>
                        <td>${booking.startDate}</td>
                        <td>${booking.endDate}</td>
                        <td>${booking.numberOfTravelers}</td>
                        <td>${booking.accommodationType}</td>
                        <td>${booking.specialRequirements}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>
</body>
</html>
