<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fuel Allocation Form</title>
    <style>
        /* Global Styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            width: 100%;
            max-width: 600px;
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            margin: 20px;
        }

        h2 {
            text-align: center;
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
        }

        #currentDate {
            text-align: center;
            font-size: 14px;
            color: #777;
            margin-bottom: 25px;
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        label {
            font-size: 16px;
            font-weight: bold;
            color: #444;
        }

        input, select {
            padding: 12px;
            font-size: 16px;
            border-radius: 8px;
            border: 1px solid #ddd;
            transition: border 0.3s ease-in-out;
        }

        input:focus, select:focus {
            border-color: #4CAF50;
            outline: none;
        }

        select {
            background-color: #f9f9f9;
        }

        button {
            padding: 15px;
            font-size: 18px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out;
        }

        button:hover {
            background-color: #45a049;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .form-group input,
        .form-group select {
            width: 100%;
        }

        .radio-group {
            display: flex;
            gap: 20px;
            align-items: center;
            margin-top: 5px;
        }

        .radio-group label {
            display: flex;
            align-items: center;
            font-weight: normal;
            font-size: 15px;
            color: #555;
        }

        .radio-group input[type="radio"] {
            margin-right: 8px;
            accent-color: #4CAF50;
            transform: scale(1.2);
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Customer Form</h2>
   
    <form action="add_customer" method="post">
              <!-- Hidden input field to store the current date -->
        <input type="date" id="hiddenCurrentDate" name="currentDate">

        <!-- Fuel Type -->
        <div class="form-group">
            <label for="fuelType">Fuel Type:</label>
            <select id="fuelType" name="fuelType" onchange="setPrice()">
                <option value="">--Select Fuel Type--</option>
                <option value="Petrol">Petrol</option>
                <option value="Diesel">Diesel</option>
            </select>
        </div>

        <!-- Total Liters -->
        <div class="form-group">
            <label for="total">Total (Liters):</label>
            <input type="number" id="total" name="totalliters" required min="1" step="any" oninput="calculateTotalAmount()">
        </div>

        <!-- Price Per Liter -->
        <div class="form-group">
            <label for="price">Price (per Liter):</label>
            <input type="number" id="price" name="price" required readonly>
        </div>

        <!-- Total Amount -->
        <div class="form-group">
            <label for="totalAmount">Total Amount:</label>
            <input type="number" id="totalAmount" name="totalAmount" required oninput="calculateTotalLiters()">
        </div>

        <!-- Payment Type Radio Buttons -->
        <div class="form-group">
            <label>Payment:</label>
            <div class="radio-group">
                <label><input type="radio" name="Payment" value="cash" required> Cash</label>
                <label><input type="radio" name="Payment" value="online"> Online</label>
            </div>
        </div>

        <!-- Submit Button -->
        <button type="submit">Submit</button>
    </form>
</div>

<script>
    function setPrice() {
        var fuelType = document.getElementById('fuelType').value;
        var priceInput = document.getElementById('price');

        if (fuelType === 'Petrol') {
            priceInput.value = '98.00';
        } else if (fuelType === 'Diesel') {
            priceInput.value = '80.00';
        } else {
            priceInput.value = '';
        }

        calculateTotalAmount();
    }

    function calculateTotalAmount() {
        var price = parseFloat(document.getElementById('price').value);
        var total = parseFloat(document.getElementById('total').value);
        var totalAmountInput = document.getElementById('totalAmount');

        if (!isNaN(price) && !isNaN(total)) {
            var totalAmount = price * total;
            totalAmountInput.value = totalAmount.toFixed(2);
        } else {
            totalAmountInput.value = '';
        }
    }

    function calculateTotalLiters() {
        var price = parseFloat(document.getElementById('price').value);
        var totalAmount = parseFloat(document.getElementById('totalAmount').value);
        var totalInput = document.getElementById('total');

        if (!isNaN(price) && !isNaN(totalAmount)) {
            var totalLiters = totalAmount / price;
            totalInput.value = totalLiters.toFixed(2);
        } else {
            totalInput.value = '';
        }
    }

    function setCurrentDate() {
        var today = new Date();
        var year = today.getFullYear();
        var month = ("0" + (today.getMonth() + 1)).slice(-2);
        var day = ("0" + today.getDate()).slice(-2);
        var currentDate = year + '-' + month + '-' + day;

        document.getElementById('hiddenCurrentDate').value = currentDate;
        document.getElementById('currentDate').textContent = "Today's Date: " + currentDate;
    }

    window.onload = setCurrentDate;
</script>

</body>
</html>
