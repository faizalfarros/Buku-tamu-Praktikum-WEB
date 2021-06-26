<!DOCTYPE html>
<html lang="en">
<head>
    <title>Koneksi databse</title>
</head>
<body>
    <h1>KONEKSI SUKSES</h1> <?php
    $host = "localhost";
    $username = "root";
    $password = "";
    $database = "akademik";
    $koneksi = mysqli_connect($host, $username, $password, $database);
if ($koneksi) {
    // echo "KONEKSI SUKSES";
}else {
    echo "not connected";
}
?>
</body>
</html>