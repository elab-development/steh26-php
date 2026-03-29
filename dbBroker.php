<?php

$host = "db";
$user = "student";
$pass = "student";
$db = "kolokvijumi";


$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
    echo ("error connecting to database: $conn->connect_errno");
}
