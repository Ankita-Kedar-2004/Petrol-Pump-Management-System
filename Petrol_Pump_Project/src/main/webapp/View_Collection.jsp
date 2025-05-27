<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Fuel Collection Summary</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            margin-top: 20px;
            color: #333;
        }

        .container {
            width: 90%;
            margin: 30px auto;
        }

        .btn-submit, .btn-calc {
            margin: 10px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        .btn-submit:hover, .btn-calc:hover {
            background-color: #45a049;
        }

        .form-group {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .form-group input {
            margin-right: 10px;
            flex: 0 1 150px;
            min-width: 120px;
        }

        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow: hidden;
        }

        th, td {
            padding: 12px 15px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #4CAF50;
            color: white;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .total-container {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 20px;
        }

        .total-amount-display {
            margin-left: 20px;
            font-size: 18px;
            font-weight: bold;
            color: #333;
        }

        @media (max-width: 600px) {
            .form-group {
                flex-direction: column;
                align-items: flex-start;
            }

            .btn-calc {
                margin-top: 10px;
            }
        }
    </style>
</head>
<body>

<div class="container">
    <h2> Collection </h2>

    <!-- Form to select date -->
    <form action="view_collection" method="get">
        <div class="form-group">
            <input type="date" name="date" value="${param.date}" required>
            <button class="btn-submit" type="submit">Submit</button>
        </div>
    </form>

    <!-- Hidden raw data in HTML (used by JavaScript) -->
    <div style="display:none;">
        <table id="rawData">
            <tbody>
                <c:forEach items="${all}" var="customer">
                    <tr>
                        <td class="fuel">${customer.fuelType}</td>
                        <td class="liters">${customer.liters}</td>
                        <td class="amount">${customer.totalAmount}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <!-- Summary Table (initially hidden) -->
    <table id="summaryTable" style="display:none;">
        <thead>
            <tr>
                <th>Fuel Type</th>
                <th>Total Liters</th>
                <th>Total Amount</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Petrol</td>
                <td id="petrolLiters">0</td>
                <td id="petrolAmount">0</td>
            </tr>
            <tr>
                <td>Diesel</td>
                <td id="dieselLiters">0</td>
                <td id="dieselAmount">0</td>
            </tr>
        </tbody>
    </table>

    <!-- Calculate Button and Total Amount Display -->
    <div class="total-container">
        <button onclick="calculateSummary()" class="btn-calc" style="background:red;">Total</button>
        <div id="grandTotalContainer" class="total-amount-display" style="display:none;">
            Total Amount: ₹<span id="grandTotal">0</span>
        </div>
    </div>
</div>

<script>
    function calculateSummary() {
        const rows = document.querySelectorAll("#rawData tbody tr");

        let petrolLiters = 0, petrolAmount = 0;
        let dieselLiters = 0, dieselAmount = 0;

        rows.forEach(row => {
            const fuel = row.querySelector(".fuel").innerText.trim().toLowerCase();
            const liters = parseFloat(row.querySelector(".liters").innerText);
            const amount = parseFloat(row.querySelector(".amount").innerText);

            if (fuel === "petrol") {
                petrolLiters += liters;
                petrolAmount += amount;
            } else if (fuel === "diesel") {
                dieselLiters += liters;
                dieselAmount += amount;
            }
        });

        // Update table values
        document.getElementById("petrolLiters").innerText = petrolLiters.toFixed(2);
        document.getElementById("petrolAmount").innerText = petrolAmount.toFixed(2);
        document.getElementById("dieselLiters").innerText = dieselLiters.toFixed(2);
        document.getElementById("dieselAmount").innerText = dieselAmount.toFixed(2);

        // Grand total calculation
        const grandTotal = petrolAmount + dieselAmount;
        document.getElementById("grandTotal").innerText = grandTotal.toFixed(2);

        // Show summary table and total display
        document.getElementById("summaryTable").style.display = "table";
        document.getElementById("grandTotalContainer").style.display = "block";
    }
</script>

</body>
</html>
