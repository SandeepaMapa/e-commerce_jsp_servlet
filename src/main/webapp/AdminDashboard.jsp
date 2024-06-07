<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="#">Back to Site</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/logout">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Dashboard Body -->
<div class="container mt-5">
    <div class="row">
        <div class="col-md-4 mb-4">
            <div class="card">
                <img src="https://static.vecteezy.com/system/resources/previews/006/617/809/non_2x/four-food-items-vector.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Add Product</h5>
                    <a href="new" class="btn btn-primary">Add Product</a>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="card">
                <img src="https://static.vecteezy.com/system/resources/previews/020/437/389/original/admin-icon-vector.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Create a New Admin</h5>
                    
                    <a href="add-admin.jsp" class="btn btn-primary">Add Admin</a>
                </div>
            </div>
        </div>
         <div class="col-md-4 mb-4">
            <div class="card">
                <img src="https://static.vecteezy.com/system/resources/previews/020/437/389/original/admin-icon-vector.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">View Admins</h5>
                    
                    <a href="add-admin.jsp" class="btn btn-primary">List Admins</a>
                </div>
            </div>
        </div>
          <div class="col-md-4 mb-4">
            <div class="card">
                <img src="https://static.vecteezy.com/system/resources/previews/006/617/809/non_2x/four-food-items-vector.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">View Products</h5>
                    <a href="list" class="btn btn-primary">List Products</a>
                </div>
            </div>
        </div>
        <!-- Add more cards here -->
    </div>
</div>

<!-- Bootstrap JS and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
