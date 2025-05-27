<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Detail</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fc;
            margin: 0;
            padding: 0;
        }
      
        .profile-container {
  width: 50%;
              margin: 30px auto;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }
        .profile-header {
            text-align: center;
            margin-bottom: 20px;
        }
        .profile-image {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            background-color: #4CAF50;
            display: inline-block;
            line-height: 120px;
            font-size: 40px;
            color: white;
            font-weight: bold;
            text-align: center;
            margin-bottom: 20px;
        }
        .profile-item {
            display: flex;
            margin-bottom: 15px;
        }
        .profile-item label {
            font-weight: bold;
            width: 150px;
            margin-right: 10px;
            color: #333;
        }
        .profile-item .profile-value {
            font-size: 16px;
            color: #555;
        }
        .profile-item:nth-child(even) {
            background-color: #f9f9f9;
        }
        .profile-item .profile-value {
            color: #4CAF50;
        }
    </style>
</head>
<body>
   

    <div class="profile-container">
        <!-- Profile Picture (Circle with Icon) -->
        <div class="profile-header">
            <div class="profile-image">
                <span>${emp.name.charAt(0)}</span> <!-- Display first letter of the employee's name -->
            </div>
            <h3>${emp.name}</h3> <!-- Employee's Name -->
        </div>

        <div class="profile-item">
            <label for="empId">Id:</label>
            <div class="profile-value" id="empId">${emp.id}</div>
        </div>
        <div class="profile-item">
            <label for="empName">Employee Name:</label>
            <div class="profile-value" id="empName">${emp.name}</div>
        </div>
        <div class="profile-item">
            <label for="empEmail">Email:</label>
            <div class="profile-value" id="empEmail">${emp.email}</div>
        </div>
        <div class="profile-item">
            <label for="empContact">Contact:</label>
            <div class="profile-value" id="empContact">${emp.contact}</div>
        </div>
        <div class="profile-item">
            <label for="empSal">Salary:</label>
            <div class="profile-value" id="empSal">${emp.sal}</div>
        </div>
        <div class="profile-item">
            <label for="empAddress">Address:</label>
            <div class="profile-value" id="empAddress">${emp.address}</div>
        </div>
        <div class="profile-item">
            <label for="empAge">Age:</label>
            <div class="profile-value" id="empAge">${emp.age}</div>
        </div>
        <div class="profile-item">
            <label for="empStatus">Status:</label>
            <div class="profile-value" id="empStatus">${emp.status}</div>
        </div>
    </div>
</body>
</html>
