<?php
// Enable error reporting for debugging
error_reporting(E_ALL);
ini_set('display_errors', 1);

session_start();

// Database connection
$con = mysqli_connect('localhost', 'root', '', 'spt');

if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}

// Sanitize user input to prevent SQL injection
$admin_email = mysqli_real_escape_string($con, $_POST['admin_email']);
$admin_password = mysqli_real_escape_string($con, $_POST['admin_password']);

// Query to check admin credentials
$sql = "SELECT * FROM `admin_login` WHERE `admin_email` = '$admin_email' AND `admin_password` = '$admin_password'";
$result = mysqli_query($con, $sql);

// Check if a matching record was found
if ($result && mysqli_num_rows($result) == 1) {
    $_SESSION['admin_email'] = $admin_email; // Store admin email in session
    header('Location: admin_portal.php');
    exit();
} else {
    header('Location: admin_login.php');
    exit();
}

// Close the connection
mysqli_close($con);
?>
