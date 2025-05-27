<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New Machine</title>
    <style>
        /* General Body Style */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f7f7f7;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        /* Form Container Style */
        .form-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
        }

        /* Header Style */
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        /* Form Group Style */
        .form-group {
            margin-bottom: 20px;
        }

        /* Label Style */
        label {
            display: block;
            font-size: 16px;
            color: #555;
            margin-bottom: 5px;
        }

        /* Input Field Style */
        input[type="text"], select {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 6px;
            background-color: #fafafa;
            box-sizing: border-box;
        }

        /* Input Fields on Focus */
        input[type="text"]:focus, select:focus {
            border-color: #4CAF50;
            background-color: #ffffff;
            outline: none;
        }

        /* Submit Button Style */
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
            margin-top: 10px;
        }

        /* Submit Button Hover Style */
        input[type="submit"]:hover {
            background-color: #45a049;
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            .form-container {
                padding: 15px;
                width: 90%;
            }

            input[type="submit"] {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Add New Machine</h2>
        <form id="machineCodeForm" action="add_machine" method="get">
            <div class="form-group">
                <label for="machineCode">Machine Code:</label>
                <input type="text" id="machineCode" name="code" required>
            </div>

            <div class="form-group">
                <label for="fuelType">Fuel Type:</label>
                <select id="fuelType" name="fuelType" required>
                    <option value="">Select Fuel Type</option>
                    <option value="Petrol">Petrol</option>
                    <option value="Diesel">Diesel</option>
                    <option value="Petrol+Diesel">Petrol+Diesel</option>
                </select>
            </div>

            <div class="form-group">
                <label for="capacity">Capacity:</label>
                <input type="text" id="capacity" name="capacity" required>
            </div>

            <input type="submit" value="Submit">
        </form>
    </div>
</body>
</html>
