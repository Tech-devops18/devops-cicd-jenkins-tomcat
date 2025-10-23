<!DOCTYPE html>
<html>
<head>
  <title>DevOps Learning Registration</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
    }
    .container {
      padding: 20px;
      background-color: white;
      width: 50%;
      margin: auto;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    input[type=text], input[type=password] {
      width: 100%;
      padding: 12px;
      margin: 8px 0 20px 0;
      display: inline-block;
      border: 1px solid #ccc;
      border-radius: 4px;
    }
    .registerbtn {
      background-color: #04AA6D;
      color: white;
      padding: 14px 20px;
      margin: 10px 0;
      border: none;
      cursor: pointer;
      width: 100%;
      border-radius: 4px;
    }
    .registerbtn:hover {
      background-color: #039f5b;
    }
    .signin {
      text-align: center;
      margin-top: 20px;
    }
  </style>
</head>
<body>

  <div class="container">
    <h1>Register for DevOps Learning</h1>
    <hr>

    <label for="Name"><b>Full Name</b></label>
    <input type="text" placeholder="Enter Full Name" name="Name" id="Name" required>

    <label for="mobile"><b>Mobile Number</b></label>
    <input type="text" placeholder="Enter Mobile Number" name="mobile" id="mobile" required>

    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" id="email" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" id="psw" required>

    <label for="psw-repeat"><b>Repeat Password</b></label>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" id="psw-repeat" required>

    <p>By creating an account, you agree to our #Terms & Privacy</a>.</p>
    <button type="submit" class="registerbtn">Register</button>
  </div>

  <div class="container signin">
    <p>Already have an account? #Sign in</a>.</p>
    <h2>Thank You, Happy Learning!</h2>
    <h2>See You Again!</h2>
  </div>
</form>

</body>
</html>
