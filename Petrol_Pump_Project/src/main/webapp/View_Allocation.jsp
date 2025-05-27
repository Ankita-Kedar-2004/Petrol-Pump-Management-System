<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Details</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
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

        table {
            width: 90%;
            margin: 30px auto;
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

        caption {
            font-size: 1.5em;
            margin: 10px;
            color: #444;
        }

        /* Responsive design */
        @media (max-width: 600px) {
            table {
                width: 100%;
            }
            th, td {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>

<h2>Allocation Details</h2>



<table>
    <thead>
        <tr>
            <th> Id</th>
             <th> End Time</th>
              <th> Date</th>
               <th> Name</th>
              <th> Start Time</th>
            <th> Machine Code</th>
           
          
            
     
           
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${all}" var="allocation">
            <tr>
                <td>${allocation.id}</td>
                
            
                <td>${allocation.startTime}</td>
                <td>${allocation.endTime}</td>
                <td>${allocation.date}</td>
                <td>${allocation.machinecode}</td>
                <td>${allocation.name}</td>
               
             
            </tr>
        </c:forEach>
    </tbody>
</table>

</body>
</html>
