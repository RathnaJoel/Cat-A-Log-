<?php
// ============================================================
//  config/db.php — Database Connection (MySQLi)
//  Cat-A-Log! Project
// ============================================================

define('DB_HOST', 'localhost');
define('DB_USER', 'root');        // XAMPP default
define('DB_PASS', '');            // XAMPP default (empty)
define('DB_NAME', 'catalogue_db');
define('DB_PORT', 3306);

/**
 * Returns a live MySQLi connection.
 * Terminates with JSON error on failure (safe for AJAX calls).
 */
function getDB(): mysqli {
    $conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME, DB_PORT);

    if ($conn->connect_error) {
        http_response_code(500);
        header('Content-Type: application/json');
        echo json_encode([
            'success' => false,
            'message' => 'Database connection failed: ' . $conn->connect_error
        ]);
        exit;
    }

    $conn->set_charset('utf8mb4');
    return $conn;
}
