<?php
function log_activity($kd_user, $activity) {
    $mysqli = new mysqli("localhost", "root", "", "user_management");

    if ($mysqli->connect_error) {
        die("Connection failed: " . $mysqli->connect_error);
    }

    $stmt = $mysqli->prepare("INSERT INTO log_activity (kd_user, activity) VALUES (?, ?)");
    $stmt->bind_param("is", $kd_user, $activity);
    $stmt->execute();

    $stmt->close();
    $mysqli->close();
}
?>

