<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Pet Detail</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 800px;
            margin: 50px auto;
            background-color: #ffffff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
        .product-details {
            text-align: center;
        }
        .product-details h2 {
            color: #333333;
            margin-bottom: 20px;
        }
        .product-details .price {
            font-size: 24px;
            color: #28a745;
            margin-bottom: 20px;
        }
        .product-details p {
            font-size: 18px;
            color: #555555;
            margin-bottom: 10px;
        }
        .product-details .quantity-selector {
            margin: 20px 0;
        }
        .product-details label {
            font-size: 16px;
            margin-right: 10px;
        }
        .product-details input[type="number"] {
            width: 60px;
            padding: 5px;
            font-size: 16px;
            text-align: center;
        }
        .product-details .add-to-cart {
            background-color: #007bff;
            color: #ffffff;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
        }
        .product-details .add-to-cart:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="product-details">
        <h2 th:text="${thuCung.tenThuCung}"></h2>
        <img th:src="@{${thuCung.hinhAnh}}" alt="Product Image">
        <p class="price" th:text="'$' + ${thuCung.gia}"></p>
        <p><strong>Species:</strong> <span th:text="${thuCung.loai}"></span></p>
        <p><strong>Breed:</strong> <span th:text="${thuCung.giong}"></span></p>
        <p><strong>Age:</strong> <span th:text="${thuCung.tuoi} + ' years'"></span></p>
        <div class="quantity-selector">
            <label for="quantity">Quantity: </label>
            <input type="number" id="quantity" name="quantity" min="1" value="1">
        </div>
        <button class="add-to-cart">ADD TO CART</button>
    </div>
</div>

</body>
</html>
