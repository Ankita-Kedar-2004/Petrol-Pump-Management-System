<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Login Page</title>

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />

  <!-- Font Awesome (for social media icons) -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" />

  <style>
    body {
      background-color: #f8f9fa;
    }

    .h-custom {
      height: calc(100% - 73px);
    }

    @media (max-width: 450px) {
      .h-custom {
        height: 100%;
      }
    }

    img {
      width: 100%;
      height: auto;
      border-radius: 10px;
    }

    .form-label {
      font-weight: 600;
    }

    .form-outline input,
    .form-outline select {
      border-radius: 10px;
      border: 1px solid #ced4da;
      padding: 10px 15px;
    }

    .btn-custom {
      padding: 10px 30px;
      border-radius: 50px;
      font-weight: bold;
      font-size: 16px;
    }

    .btn-social {
      width: 40px;
      height: 40px;
      padding: 0;
      border-radius: 50%;
      font-size: 16px;
    }

    .text-danger {
      font-size: 14px;
      margin-top: 5px;
    }

    .text-center.mt-4 > button + a {
      margin-left: 10px;
    }

    a {
      text-decoration: none;
    }
  </style>
</head>
<body>

  <section class="vh-100">
    <div class="container-fluid h-custom">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-md-9 col-lg-6 col-xl-5">
          <img src="https://static.vecteezy.com/system/resources/thumbnails/006/766/774/small/gas-station-in-cartoon-style-free-vector.jpg" class="img-fluid" alt="Sample image">
        </div>
        <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
          <form id="login-form" onsubmit="validateForm(event)" action="Login" method="post">
            <div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start mb-3">
              <p class="lead fw-normal mb-0 me-3"><b>Sign in with</b></p>
             
            </div>

            <!-- Server-side error -->
            <div class="text-danger text-center mb-3">
              <b style="color:red">${error}</b>
            </div>

            <!-- Email input -->
            <div class="form-outline mb-3">
              <label class="form-label" for="email"><b>Email</b></label>
              <input type="email" id="email" class="form-control form-control-lg" placeholder="Enter a valid email address" name="email" required />
            </div>

            <!-- Password input -->
            <div class="form-outline mb-3">
              <label class="form-label" for="password"><b>Password</b></label>
              <input type="password" id="password" class="form-control form-control-lg" placeholder="Enter password" name="password" required  />
            </div>

            <!-- Role selection -->
            <div class="form-outline mb-3">
              <label class="form-label" for="role"><b>Role</b></label>
              <select id="role" class="form-control form-control-lg" name="role" required>
                <option value="" disabled selected>Select a role</option>
                <option value="Admin">Admin</option>
                <option value="Employee">Employee</option>
              </select>
            </div>

            <!-- Buttons -->
            <div class="text-center mt-4">
              <button type="submit" class="btn btn-primary btn-custom">Login</button>
              <a href="Signup.jsp" class="btn btn-outline-primary btn-custom">Sign Up</a>
            </div>

          </form>
        </div>
      </div>
    </div>
  </section>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

  <!-- Basic JS Validation (optional) -->
  <script>
    function validateForm(event) {
      const email = document.getElementById('email').value.trim();
      const password = document.getElementById('password').value.trim();
      const role = document.getElementById('role').value;

      if (!email || !password || !role) {
        alert("Please fill in all fields.");
        event.preventDefault();
      }
    }
  </script>

</body>
</html>
