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
                <td>Nama Mata Kuliah</td>
            </thead>
        </tr>
        <tbody>
            <?php
            $no=1;
            include "koneksi.php";
            $a = "SELECT * FROM matkul";
            $b = $koneksi->query($a);
            while ($c =$b->fetch_array()) { ?> 
                <tr>
                    <th><?php echo $no++; ?></th>
                    <th><?php echo $c['nm_matkul']; ?></th>
                </tr>
                <?php
            }
            ?>
        </tbody>
    </table>
</body>
</html>