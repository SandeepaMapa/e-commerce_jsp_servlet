<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Product</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h2>Edit Product</h2>
        <form action="update" method="post" enctype="multipart/form-data">
            <input type="hidden" id ="productId" name="productId" value="${product.productId}">
            <div class="form-group">
                <label for="title">Title</label>
                <input type="text" class="form-control" id="title" name="title" value="${product.title}">
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea class="form-control" id="description" name="description">${product.description}</textarea>
            </div>
            <div class="form-group">
                <label for="price">Price</label>
                <input type="text" class="form-control" id="price" name="price" value="${product.price}">
            </div>
            <div class="form-group">
                <label for="image1">Product Image 1</label>
                <input type="file" class="form-control-file" id="image1" name="image1">
                <img src="data:image/jpeg;base64,${product.productImage1Base64}" alt="Product Image 1" style="max-width: 200px;">
            </div>
            <div class="form-group">
                <label for="image2">Product Image 2</label>
                <input type="file" class="form-control-file" id="image2" name="image2">
                <img src="data:image/jpeg;base64,${product.productImage2Base64}" alt="Product Image 2" style="max-width: 200px;">
            </div>
            <div class="form-group">
                <label for="image3">Product Image 3</label>
                <input type="file" class="form-control-file" id="image3" name="image3">
                <img src="data:image/jpeg;base64,${product.productImage3Base64}" alt="Product Image 3" style="max-width: 200px;">
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
        </form>
    </div>
</body>
</html>
