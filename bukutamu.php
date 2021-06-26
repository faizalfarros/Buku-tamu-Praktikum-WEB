<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
</head>
<body>
    <table border="1">
        <tr>
            <thead>
                <td>No.</td>
                <td>Nama</td>
                <td>Email</td>
                <td>Komentar</td>
            </thead>
        </tr>
        <tbody>
            <?php
            $no=1;
            include "koneksi.php";
            $a = "SELECT * FROM bukutamu";
            $b = $koneksi->query($a);
            while ($c =$b->fetch_array()) { ?> 
                <tr>
                    <th><?php echo $no++; ?></th>
                    <th><?php echo $c['Nama']; ?></th>
                    <th><?php echo $c['email']; ?></th>
                    <th><?php echo $c['komentar']; ?></th>
                </tr>
                <?php
            }
            ?>
        </tbody>
    </table>
</body>
</html>