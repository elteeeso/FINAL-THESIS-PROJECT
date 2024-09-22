<!DOCTYPE html>
<html lang="en">
<head>
	<?php 
    include_once('includes/dbconnection.php');
    include_once('includes/functions.php');?>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
		body {
            
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 10px;
}

.login-container {
    width: 500px;
    margin: 100px auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
    text-align: center;
    margin-bottom: 20px;
}

.form-group {
    margin-bottom: 20px;
}

label {
    display: block;
    margin-bottom: 5px;
}

input[type="text"],
input[type="password"] {
	width: 90%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 3px;
}

button {
    display: block;
    width: 90%;
    padding: 10px;
    background-color: #007bff;
    border: none;
    border-radius: 3px;
    color: #fff;
    font-size: 16px;
    cursor: pointer;
}

button:hover {
    background-color: #0056b3;
}
.error-message{
	color: red;
}

	</style>
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
		<?php getLogin(); ?>
        <form action="login.php" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" name="username" id="username" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" name="password" id="password" required>
            </div>
            <button type="submit">Login</button>
            
        </form>
       
    </div>
</body>
</html>
