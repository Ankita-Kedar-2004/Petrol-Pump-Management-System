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

        /* Add Employee Button */
        .add-employee-btn {
            text-align: left; /* Positioning the button to the left */
            margin-bottom: 20px;
            padding-left: 70px;
        }

        .add-employee-btn a {
            background-color: #4CAF50;
             color: white;
            padding: 10px 20px;
            font-size: 16px;
            text-decoration: none;
            border-radius: 5px;
            display: inline-block;
            transition: background-color 0.3s;
        }

        .add-employee-btn a:hover {
            background-color: #4CAF50;
        }

        /* Edit button design */
        .update-btn {
            text-decoration: none;
            padding: 6px 12px;
            font-size: 14px;
            border-radius: 5px;
            color: white;
            background-color: #007bff; /* Blue for Add Employee (formerly Edit) */
            display: inline-flex;
            align-items: center;
            cursor: pointer;
        }

        /* Hover effect for Edit button */
        .update-btn:hover {
            background-color: #4CAF50; /* Darker blue when hovered */
        }

        /* Edit icon inside the button */
        .update-btn i {
            margin-right: 5px;
        }

        /* Delete button design */
        .delete-btn {
            text-decoration: none;
            padding: 6px 12px;
            font-size: 14px;
            border-radius: 5px;
            color: white;
            display: inline-flex;
            align-items: center;
            background-color: #dc3545; /* Red color for delete */
            cursor: pointer;
            margin-left: 10px;
        }

        .delete-btn:hover {
            background-color: #c82333; /* Darker red when hovered */
        }

        .delete-btn i {
            margin-right: 5px;
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

<h2>Employee Details</h2>

<!-- Add Employee Button placed to the left -->
<div class="add-employee-btn">
    <a href="Add_Employee.jsp">Add Employee +</a>
</div>

<table>
    <thead>
        <tr>
            <th>Employee Id</th>
            <th>Employee Name</th>
            <th>Employee Email</th>
            <th>Employee Contact</th>
            <th>Employee Sal</th>
            <th>Employee Address</th>
            <th>Employee Age</th>
            <th>Employee Status</th>
            <th>Action</th> <!-- Added action column for delete and update -->
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${all}" var="employee">
            <tr>
                <td>${employee.id}</td>
                <td>${employee.name}</td>
                <td>${employee.email}</td>
                <td>${employee.contact}</td>
                <td>${employee.sal}</td>
                <td>${employee.address}</td>
                <td>${employee.age}</td>
                <td>
                    <!-- Simplified status display with no button style -->
                    <span>${employee.status == 'active' ? 'Active' : 'Inactive'}</span>
                </td>
                <td>
                    <!-- Update button with icon styled as a status button -->
                    <a href="Update_Employee.jsp?id=${employee.id}&name=${employee.name}&email=${employee.email}&contact=${employee.contact}&salary=${employee.sal}&address=${employee.address}&age=${employee.age}" 
                    class="update-btn">
                        <i class="fas fa-edit"></i>Edit
                    </a>
                
                    <!-- Delete button with icon styled as a status button -->
                    <a href="deleteEmployee?id=${employee.id}" 
                       onclick="return confirm('Are you sure you want to delete this employee?');"
                       class="delete-btn">
                        <i class="fas fa-trash-alt"></i>Delete
                    </a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>

</body>
</html>
