<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${city} - City Details</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<!-- Navigation bar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <a class="navbar-brand" href="/">Travel Portal</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="/home">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/profile?username=${username}">Profile</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#map-section">Search Map Location</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/destinations">Destinations</a>
            </li>
            <li class="nav-item">
                <form action="/logout" method="get" style="display:inline;">
                    <button type="submit" class="btn btn-link nav-link">Logout</button>
                </form>
            </li>
        </ul>
    </div>
</nav>

<div class="container my-5">
    <h1 class="text-center">${city} - Popular Places</h1>
    <div class="row">
        <c:forEach var="place" items="${places}">
            <div class="col-md-4 my-3">
                <div class="card">
                    <img class="card-img-top" src="${place.imageUrl}" alt="${place.name}" style="height: 200px; object-fit: cover;">
                    <div class="card-body">
                        <h5 class="card-title">${place.name}</h5>
                        <p class="card-text">${place.description}</p>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
</body>
</html>
