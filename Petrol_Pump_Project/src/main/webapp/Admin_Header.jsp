<!-- header.jsp -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Petrol Pump Management System Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="style.css"> <!-- Link to the external CSS file -->
</head>
<body>
<div class="wrapper">
    <!-- Sidebar -->
    <div class="sidebar">
        <h4> Admin Dashboard</h4>
        <a href="Admin_Dashbord.jsp">Dashboard</a>
        <!-- Employee Dropdown Menu -->
        <ul class="navbar-nav">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Employees
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="view_employee">View Employees</a></li>
                    <li><a class="dropdown-item" href="Add_Employee.jsp">Add Employee</a></li>
                    <li><a class="dropdown-item" href="Update_Employee.jsp">Update Employee</a></li>
                </ul>
            </li>
        </ul>
        <ul class="navbar-nav">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                   Machine
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="view_machine">View Machine</a></li>
                    <li><a class="dropdown-item" href="Add_Machine.jsp">Add New Machine</a></li>
            
                </ul>
            </li>
        </ul>
        <a href="View_Collection.jsp">View Collection</a>
        <a href="view_customer">View Customer</a>
        
           <ul class="navbar-nav">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                   Allocation
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="allocate_machine">Allocate Machine </a></li>
                    <li><a class="dropdown-item" href="Show_Allocation.jsp">View  Machine Allocation</a></li>
            
                </ul>
            </li>
        </ul>
    </div>

    <!-- Main Content -->
    <div class="content">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Petrol Pump Management System</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="Login.jsp">Home</a>
                            
                        </li>
                                                <li class="nav-item">
                          <a class="nav-link" href="logout">Logout</a>
                          </li>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>