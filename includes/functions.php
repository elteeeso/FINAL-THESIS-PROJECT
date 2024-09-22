<?php
session_start();
function isLoggedIn()
{
    // Check if the user is logged in by verifying the existence of a session variable
    if (isset($_SESSION["loggedin"]) && $_SESSION["loggedin"] === true) {
        return true; // User is logged in
    } else {
        return false; // User is not logged in
    }
}

function allowedIfLogged()
{
    if (!isLoggedIn()) {
        header('location:login.php');
    }
}

function getLogin()
{
    // Check if the form is submitted
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // Get username and password from form
        $username = $_POST["username"];
        $password = $_POST["password"];
        global  $dbh;
        // Prepare and execute SQL statement to fetch user with given username
        $stmt = $dbh->prepare("SELECT user_id, username, password FROM users WHERE username = :username");
        $stmt->execute(['username' => $username]);
        $user = $stmt->fetch();

        // Verify password if user is found
        if ($user && $user['password'] === md5($password)) {
            // Password is correct, start session and store user data
            $_SESSION["loggedin"] = true;
            $_SESSION["user_id"] = $user['user_id'];
            $_SESSION["username"] = $user['username'];

            // Redirect user to dashboard or any authenticated page
            header("location: index.php");
            exit;
        } else {
            // Invalid username or password
            $error = "Invalid username or password.";
            echo '<div class="error-message">' . $error . '</div>';
        }
    }
}


function getUserAppointments()
{
    global  $dbh;
    $sql = "SELECT * from tblappointment where user_id = " . $_SESSION['user_id'];
    $query = $dbh->prepare($sql);
    $query->execute();
    return $query->fetchAll(PDO::FETCH_OBJ);
}
