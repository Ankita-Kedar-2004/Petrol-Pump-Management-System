<%@ page import="java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Machine Allocation Form</title>
    <style>
        /* General body styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        /* Container styles */
        .container {
            width: 50%;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            transition: all 0.3s ease-in-out;
        }

        /* Header styles */
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
            font-size: 24px;
            font-weight: 600;
        }

        /* Form styles */
        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin: 10px 0 5px;
            font-weight: bold;
            font-size: 14px;
            color: #333;
        }

        /* Input and select box styles */
        input, select {
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
            transition: border-color 0.3s ease-in-out;
        }

        input:focus, select:focus {
            border-color: #4CAF50;
            outline: none;
        }

        /* Submit button styles */
        button {
            padding: 12px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease-in-out;
            margin-top: 20px;
        }

        button:hover {
            background-color: #45a049;
        }

        /* Responsive design */
        @media (max-width: 768px) {
            .container {
                width: 80%;
            }
        }

        @media (max-width: 480px) {
            .container {
                width: 100%;
            }
            h2 {
                font-size: 20px;
            }
            button {
                font-size: 14px;
            }
            .time-container {
        display: flex;
        gap: 10px;
    }

    .time-container div {
        flex: 1;
    }
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Machine Allocation Form</h2>
   
    <form action="allocate" method="post">
    
     <!-- New Remarks Input Field -->
        <label for="id">ID:</label>
        <input type="text" id="id" name="id" value="${param.id }" />
        
        <label for="name">name:</label>
        <input type="text" id="id" name="name" value="${param.name }" />
        
        <!-- Dropdown for selecting machine -->
        <label for="machine">Select Machine:</label>
        <select id="machine" name="machine" required>
            <option value="">--Select a Machine--</option>
            <c:forEach items="${all}" var="machine">
                <option value="${machine.code}">${machine.code}</option>
            </c:forEach>
        </select>

       <div class="row">
    <div class="col-md-6 form-group">
        <label for="startTime">Start Time</label>
        <input type="time" class="form-control" id="startTime" name="startTime" required>
    </div>
    <div class="col-md-6 form-group">
        <label for="endTime">End Time</label>
        <input type="time" class="form-control" id="endTime" name="endTime" required>
    </div>
</div>

        <!-- Date -->
        <label for="date">Date:</label>
        <input type="date" id="date" name="date" required>

       

        <!-- Submit Button -->
        <button type="submit">Submit</button>
    </form>
</div>

</body>
</html>
