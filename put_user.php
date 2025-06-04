<?php
require_once "config.php";

// Fungsi untuk membersihkan input
function cleanInput($data) {
    return htmlspecialchars(strip_tags(trim($data)));
}

// Validasi ID dari path
if (!$id) {
    http_response_code(400);
    echo json_encode(["error" => "ID diperlukan"]);
    exit;
}

// Direktori untuk menyimpan file upload
$uploadDir = "uploads/";
if (!is_dir($uploadDir)) {
    mkdir($uploadDir, 0777, true);
}

// Ambil data dari form-data (via $_POST dan $_FILES)
$name = isset($_POST["name"]) ? cleanInput($_POST["name"]) : "";
$email = isset($_POST["email"]) ? cleanInput($_POST["email"]) : "";
$role_id = isset($_POST["role_id"]) ? (int)$_POST["role_id"] : null;
$profile_image = null;

// Tangani upload file profile_image (jika ada)
if (isset($_FILES["profile_image"]) && $_FILES["profile_image"]["error"] == UPLOAD_ERR_OK) {
    $fileTmpPath = $_FILES["profile_image"]["tmp_name"];
    $fileName = $_FILES["profile_image"]["name"];
    $fileExt = strtolower(pathinfo($fileName, PATHINFO_EXTENSION));
    $allowedExts = ["jpg", "jpeg", "png"];

    // Validasi ekstensi file
    if (in_array($fileExt, $allowedExts)) {
        $newFileName = uniqid() . "." . $fileExt;
        $destPath = $uploadDir . $newFileName;
        if (move_uploaded_file($fileTmpPath, $destPath)) {
            $profile_image = $newFileName;
        } else {
            http_response_code(500);
            echo json_encode(["error" => "Gagal mengunggah file"]);
            exit;
        }
    } else {
        http_response_code(400);
        echo json_encode(["error" => "Ekstensi file tidak diizinkan. Gunakan jpg, jpeg, atau png"]);
        exit;
    }
}

// Validasi dasar
if (empty($name) || empty($email)) {
    http_response_code(400);
    echo json_encode(["error" => "Name dan email wajib diisi"]);
    exit;
}

// Update database
$query = "UPDATE tb_users SET name = '$name', email = '$email', role_id = " . ($role_id ? $role_id : "NULL") . ", profile_image = " . ($profile_image ? "'$profile_image'" : "NULL") . " WHERE id = $id";
if (mysqli_query($conn, $query) && mysqli_affected_rows($conn) > 0) {
    echo json_encode(["message" => "User berhasil diperbarui"]);
} else {
    http_response_code(404);
    echo json_encode(["error" => "User tidak ditemukan atau gagal diperbarui"]);
}

mysqli_close($conn);
?>