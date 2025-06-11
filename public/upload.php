<?php
require '../config.php';

// Vérifie que le fichier est présent
if (!isset($_FILES['file']) || !isset($_POST['jeu'])) {
    http_response_code(400);
    echo "Fichier ou nom du jeu manquant.";
    exit;
}

$jeu = $_POST['jeu'];
$file = $_FILES['file'];

// Dossier d'upload d'image
$uploadDir = __DIR__ . '/uploads/';
if (!is_dir($uploadDir)) {
    mkdir($uploadDir, 0777, true);
}

$filename = basename($file['name']);
$targetPath = $uploadDir . $filename;

// Vérifie l'extension
$allowed = ['jpg', 'jpeg', 'png', 'gif', 'avif'];
$ext = strtolower(pathinfo($filename, PATHINFO_EXTENSION));
if (!in_array($ext, $allowed)) {
    http_response_code(415);
    echo "Type de fichier non autorisé.";
    exit;
}

// Déplace le fichier
if (move_uploaded_file($file['tmp_name'], $targetPath)) {
    // Insert les données dans la bd
    $stmt = $pdo->prepare("INSERT INTO jaquette (nom_jeu, image) VALUES (?, ?)");
    $stmt->execute([$jeu, $filename]);
    echo "Jaquette uploadée avec succès.";
} else {
    http_response_code(500);
    echo "Erreur lors de l'upload.";
}
