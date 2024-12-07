<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" type="text/css" href="css/admin.css">
</head>
<style>
        body {
            font-family: Arial, sans-serif;
        }
        .dashboard-container {
            max-width: 1200px;
            margin: 0 auto;
        }
        .dashboard-header {
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: center;
        }
        .dashboard-section {
            margin: 20px 0;
        }
        .cards-container {
            display: flex;
            gap: 20px;
            flex-wrap: wrap;
        }
        .card {
            flex: 1 1 calc(33.333% - 20px);
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 20px;
            text-align: center;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            background-color: #f9f9f9;
        }
        .card h3 {
            margin: 10px 0;
            color: #333;
        }
        .card p {
            margin: 10px 0;
            color: #666;
        }
        .card a {
            display: inline-block;
            margin-top: 10px;
            text-decoration: none;
            color: #007BFF;
            font-weight: bold;
        }
        .card a:hover {
            text-decoration: underline;
        }
    </style>
<body>
    <!-- Navigation Bar -->
    <div class="navbar">
        <h2>Admin Dashboard</h2>
        <ul>
            <li><a href="#home" onclick="showSection('home')">Home</a></li>
            <li><a href="#addGuide" onclick="showSection('addGuide')">Add Guide</a></li>
             <li><a href="/addUser" onclick="showSection('addUser')">Add User</a></li>
            <li><a href="#manageUsers" onclick="showSection('manageUsers')">Manage Users</a></li>
            <li><a href="#manageGuides" onclick="showSection('manageGuides')">Manage Guides</a></li>
            <li><a href="#addPlace" onclick="showSection('addPlace')">Add Cities</a></li>
            <li><a href="#contactmessages" onclick="showSection('managecontact')">Contact Messages</a></li>
             <li><a href="#manageBookings" onclick="showSection('manageBookings')">Manage Bookings</a></li>
            <li><a href="/logout">Logout</a></li>
        </ul>
    </div>

    <!-- Main Content -->
    <div class="dashboard-content">
        <!-- Home Section -->
        <div id="home" class="section" style="display: none;">
            <h2>Welcome to the Admin Dashboard</h2>
            <p>Here you can manage users, bookings, guides, and support requests efficiently.</p>
            <div class="cards-container">
                <div class="card">
                    <h3>Manage Users</h3>
                    <p>Total Users: ${users.size()}</p>
                    <a href="/adminDashboard#users"></a>
                </div>
                <div class="card">
                    <h3>Manage Bookings</h3>
                    <p>Total Bookings: ${bookings.size()}</p>
                    <a href="/adminDashboard#bookings"></a>
                </div>
                <div class="card">
                    <h3>Manage Guides</h3>
                    <p>Total Guides: ${guides.size()}</p>
                    <a href="/adminDashboard#guides"></a>
                </div>
                <div class="card">
                    <h3>Manage Contacts</h3>
                    <p>Total Contacts: ${contacts.size()}</p>
                    <a href="/adminDashboard#contacts"></a>
                </div>
            </div>
        </div>


        <!-- Add Guide Section -->
        <div id="addGuide" class="section" style="display: none;">
            <h3>Add Guide</h3>
            <form id="addGuideForm">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required><br>

                <label for="specialization">Specialization:</label>
                <input type="text" id="specialization" name="specialization" required><br>

                <label for="languages">Languages:</label>
                <input type="text" id="languages" name="languages" required><br>

                <label for="contactNumber">Contact Number:</label>
                <input type="text" id="contactNumber" name="contactNumber" required><br><br>

                <button type="submit">Add Guide</button>
            </form>
        </div>
         <div id="manageBookings" class="section" style="display: none;">
        <h2>Bookings</h2>
<table border="1">
    <thead>
        <tr>
            <th>Booking ID</th>
            <th>Username</th>
            <th>Destination</th>
            <th>Number of Travelers</th>
            <th>Start Date</th>
            <th>End Date</th>
            <th>Accommodation Type</th>
            <th>Special Requirements</th>
            <th>Booking Date</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="booking" items="${bookings}">
            <tr>
                <td>${booking.id}</td>
                <td>${booking.username}</td>
                <td>${booking.destination}</td>
                <td>${booking.numberOfTravelers}</td>
                <td>${booking.startDate}</td>
                <td>${booking.endDate}</td>
                <td>${booking.accommodationType}</td>
                <td>${booking.specialRequirements}</td>
                <td>${booking.bookingDate}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>
       </div> 
        
         <div id="managecontact" class="section" style="display: none;">
      <h2>Contact Messages</h2>
<table border="1">
    <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Message</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="contact" items="${contacts}">
            <tr>
                <td>${contact.id}</td>
                <td>${contact.name}</td>
                <td>${contact.email}</td>
                <td>${contact.message}</td>
                <td>
                    <a href="/replyContact/${contact.id}">Reply</a>  <!-- Link to reply form -->
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
      </div>  
        
        <!-- Manage Users Section -->
        <div id="manageUsers" class="section" style="display: none;">
            <h3>Manage Users</h3>
            <table border="1">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Username</th>
                        <th>Email</th>
                        <th>Contact Number</th>
                        <th>Role</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="user" items="${users}">
                        <tr>
                            <td>${user.id}</td>
                            <td>${user.firstName}</td>
                            <td>${user.lastName}</td>
                            <td>${user.username}</td>
                            <td>${user.email}</td>
                            <td>${user.contactNumber}</td>
                            <td>${user.role}</td>
                            <td>
                                <a href="/editUser/${user.id}">Edit</a>
                                <a href="/deleteUser/${user.id}" onclick="return confirm('Are you sure?');">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

<!-- Manage Guides Section -->
<div id="manageGuides" class="section" style="display: none;">
    <h3>Manage Guides</h3>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Specialization</th>
                <th>Languages</th>
                <th>Contact Number</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="guide" items="${guides}">
                <tr>
                    <td>${guide.id}</td>
                    <td>${guide.name}</td>
                    <td>${guide.specialization}</td>
                    <td>${guide.languages}</td>
                    <td>${guide.contactNumber}</td>
                    <td>
 <a href="${pageContext.request.contextPath}/guides/editGuide/${guide.id}">Edit</a>
                       <a href="/guides/deleteGuide/${guide.id}" onclick="return confirm('Are you sure you want to delete this guide?');">Delete</a>

                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

        <!-- Add Cities Section -->
        <div id="addPlace" class="section" style="display: none;">
            <h3>Add Cities</h3>
            <form action="/addPlace" method="POST">
                <div>
                    <label for="name">Place Name:</label>
                    <input type="text" id="name" name="name" required>
                </div>
                <div>
                    <label for="description">Description:</label>
                    <textarea id="description" name="description" required></textarea>
                </div>
                <div>
                    <label for="imageUrl">Image URL:</label>
                    <input type="text" id="imageUrl" name="imageUrl" required>
                </div>
                <div>
                    <label for="city">City:</label>
                    <input type="text" id="city" name="city" required>
                </div>
                <button type="submit">Add Place</button>
            </form>
        </div>
    </div>

    <script>
        // Function to show specific sections
        function showSection(sectionId) {
            document.querySelectorAll('.section').forEach(section => {
                section.style.display = 'none'; // Hide all sections
            });
            document.getElementById(sectionId).style.display = 'block'; // Show the selected section
        }

        // Set default view to 'Home' on initial page load
        window.onload = function () {
            showSection('home');
        };

        function deleteGuide(id) {
            if (confirm("Are you sure you want to delete this guide?")) {
                fetch(`/guides/deleteGuide/${id}`, { method: "DELETE" })
                    .then(response => {
                        if (response.ok) {
                            alert("Guide deleted successfully.");
                            window.location.href = "/adminDashboard"; // Redirect to dashboard
                        } else {
                            alert("Failed to delete guide.");
                        }
                    })
                    .catch(error => console.error("Error:", error));
            }
        }


        
        
        
     // Function to handle form submission for adding guides
        document.getElementById('addGuideForm').addEventListener('submit', function (event) {
            event.preventDefault();  // Prevent the default form submission

            // Disable the submit button to prevent multiple clicks
            const submitButton = event.target.querySelector('button[type="submit"]');
            submitButton.disabled = true;
            submitButton.textContent = 'Submitting...';

            const guide = {
                name: document.getElementById('name').value,
                specialization: document.getElementById('specialization').value,
                languages: document.getElementById('languages').value,
                contactNumber: document.getElementById('contactNumber').value
            };

            fetch('/guides', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(guide)
            })
            .then(response => response.json())
            .then(data => {
                alert('Guide added successfully!');
                document.getElementById('addGuideForm').reset();  // Reset the form fields
                submitButton.disabled = false;  // Enable the submit button
                submitButton.textContent = 'Add Guide';  // Restore button text
            })
            .catch(error => {
                console.error('Error:', error);
                alert('Failed to add guide.');
                submitButton.disabled = false;  // Enable the submit button in case of error
                submitButton.textContent = 'Add Guide';  // Restore button text
            });
        });
  

    </script>
</body>
</html>
