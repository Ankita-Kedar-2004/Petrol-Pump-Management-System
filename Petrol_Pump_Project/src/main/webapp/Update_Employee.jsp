<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #ecf0f1;
        }

        .form-container {
            max-width: 600px;
            margin: 50px auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .form-control {
            border-radius: 5px;
            box-shadow: none;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            font-weight: bold;
        }

        .btn-primary {
            background-color: #1abc9c;
            border: none;
        }

        .btn-primary:hover {
            background-color: #16a085;
        }

        .submit-btn-container {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>

    <div class="form-container">
        <h2>Employee Update Form</h2>
        <form action="update_employee" >
            <!-- Name -->
            <div class="form-group">
                <label for="name">Full Name</label>
                <input type="text" class="form-control" id="name"   name="name" value="${param.name}" required>
            </div>

            <!-- Email -->
            <div class="form-group">
                <label for="email">Email address</label>
                <input type="email" class="form-control" id="email"  name="email" value="${param.email}"  required>
            </div>

            <!-- Contact -->
            <div class="form-group">
                <label for="contact">Contact Number</label>
                <input type="number" class="form-control" id="contact" name="contact" value="${param.contact }" required >
            </div>
            
            <div class="form-group">
               <label for="status">Status</label>
              <select class="form-control" id="status"  name="status" s required>
                        <option value="active" name="status" ${param.status=='active' ? 'selected':'' } >Active</option>
                      <option value="inactive" name="status" ${param.status=='inactive' ? 'selected':'' }>Inactive</option>
                </select>
             </div>
            
             <!-- Salary -->
            <div class="form-group">
                <label for="salary">Salary</label>
                <input type="number" class="form-control" id="salary"  value="${param.salary }"  min="1000" name="sal" required>
            </div>

            <!-- Address -->
            <div class="form-group">
                <label for="address">Address</label>
                <textarea class="form-control" id="address" rows="3"  name="address" required>${param.address }</textarea>
            </div>

            <!-- Age -->
            <div class="form-group">
                <label for="age">Age</label>
                <input type="number" class="form-control" id="age" placeholder="Enter your age"  value="${param.age }" min="18" name="age" required>
            </div>

           

            <!-- Submit Button Centered -->
            <div class="submit-btn-container">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
