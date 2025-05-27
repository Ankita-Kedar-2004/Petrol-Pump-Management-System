<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Machine Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            margin-top: 40px;
            color: #333;
            font-size: 30px;
            letter-spacing: 1px;
        }

        .add-btn {
            display: block;
            margin: 30px auto;
            padding: 12px 24px;
            font-size: 18px;
            color: white;
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            text-align: center;
            text-decoration: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .add-btn:hover {
            background-color: #0056b3;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: white;
        }

        th, td {
            padding: 14px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #4CAF50;
            color: white;
            font-size: 16px;
        }

        td {
            font-size: 14px;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        /* Add Machine Button */
        .add-Machine-btn {
            text-align: left; /* Positioning the button to the left */
            margin-bottom: 20px;
            padding-left: 150px;
        }

        .add-Machine-btn a {
            background-color: #4CAF50;
             color: white;
            padding: 10px 20px;
            font-size: 20px;
            text-decoration: none;
            border-radius: 5px;
            display: inline-block;
            transition: background-color 0.3s;
        }

        .add-Machine-btn a:hover {
            background-color: #4CAF50;
        }


        .delete-btn {
            text-decoration: none;
            padding: 8px 16px;
            font-size: 14px;
            border-radius: 5px;
            color: white;
            background-color: #dc3545;
            display: inline-flex;
            align-items: center;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .delete-btn:hover {
            background-color: #c82333;
        }

        .delete-btn i {
            margin-right: 8px;
        }

        .delete-btn:active {
            transform: scale(0.98);
        }

        @media (max-width: 768px) {
            table {
                width: 100%;
            }

            th, td {
                font-size: 12px;
                padding: 10px;
            }

            .add-btn {
                font-size: 16px;
                padding: 10px 20px;
            }
        }
    </style>

    <!-- Bootstrap 5 CSS Link -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEJ3Q2zRZs+X7JYXGf1jK1yJGG99Yo80sQFzT3TOtPQJ39Kz6g/cp4r+ghvnu" crossorigin="anonymous">

    <!-- Include FontAwesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

    <h2>Machine Details</h2>

  
<!-- Add machine Button placed to the left -->
<div class="add-Machine-btn">
 <a href="Add_Machine.jsp" class="add-btn">Add Machine +</a>
</div>
    <table>
      
        <thead>
            <tr>
                <th>Machine Id</th>
                <th>Machine Code</th>
                <th>Machine FuelType</th>
                <th>Machine  Capacity</th>
                
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${all}" var="Machine">
                <tr>
                    <td>${Machine.id}</td>
                    <td>${Machine.code}</td>
                     <td>${Machine.fuelType}</td>
                      <td>${Machine.capacity}</td>
                     
                    <td>
                        <!-- Delete button with custom design -->
                        <a href="deleteMachine?id=${Machine.id}"
                           onclick="return confirm('Are you sure you want to delete this machine?');"
                           class="delete-btn">
                            <i class="fas fa-trash-alt"></i> Delete
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

</body>
</html>
s