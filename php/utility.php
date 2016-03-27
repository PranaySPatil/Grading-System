<?php

$complaint = array("Not Handled", "Accepted", "Resolved", "Rejected");
$type = array("", "CPU", "Monitor", "Keyboard", "Mouse");
$complaint_type = array("Hardware", "Network", "Software");
$priority = array("Low", "Medium", "High");

global $conn;

$serverName = "localhost";
$userName   = "root";
$password   = "";
$dbname     = "grading_system";

$conn = new mysqli($serverName, $userName, $password, $dbname);

?>