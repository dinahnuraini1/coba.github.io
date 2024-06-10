<?php
include 'koneksi_ty.php';

if (isset($_GET['kd_user'])) {
    $kd_user = $_GET['kd_user'];
    // $data_user = mysqli_query($con, "SELECT * FROM tc_tb_user WHERE kd_user='$kd_user'");
    $query = "SELECT tc_tb_user.*, tc_tb_user_lvl.nm_level
              FROM tc_tb_user 
              INNER JOIN tc_tb_user_lvl ON tc_tb_user.kd_level = tc_tb_user_lvl.kd_level 
              WHERE kd_user='$kd_user'";
    $data_user = mysqli_query($con2, $query);

    if ($data_user) {
        $q_user = mysqli_fetch_array($data_user);

        if (isset($_POST['submit'])) {
            $nama_user = $_POST['nama_user'];
            $kd_level = $_POST['kd_level'];
            $old_password = $_POST['old_password'];
            $new_password = ($_POST['new_password']);
            $konf_password = ($_POST['konf_password']);

            // Validasi old password
            if ($old_password != $q_user['password']) {
                echo "
                    <script>
                        alert('Old Password Salah');
                        window.location.href = 'update_user_tayangan.php?kd_user=$kd_user';
                    </script>
                ";
                exit();
            }

            // Validasi new password dan konfirmasi password
            if ($new_password != $konf_password) {
                echo "
                    <script>
                        alert('Konfirmasi Password Tidak Cocok');
                        window.location.href = 'update_user_tayangan.php?kd_user=$kd_user';
                    </script>
                ";
                exit();
            }
            // Validasi password baru
            if (!preg_match('/^(?=.*\d)(?=.*[A-Za-z])[0-9A-Za-z]{8,16}$/', $new_password)) {
                echo "
                    <script>
                        alert('Password Baru anda belum memenuhi kriteria !');
                        window.location.href = 'update_user_tayangan.php?kd_user=$kd_user';
                    </script>
                ";
                exit();
            }
            // function validasi($new_password){
            //     if (!preg_match('/^(?=.*\d)(?=.*[A-Za-z])[0-9A-Za-z]{1,8}$/', $new_password)){
            //         return false;
            //     }
            //     return true;
            // }
            // if ($_SERVER["REQUEST_METHOD"]=="POST"){
            //     $userpasword=$_POST["new_password"];
            //     if (validasi($userpasword)){
            //         echo "password valid!";
            //     }else {
            //         echo "Password Baru harus terdiri dari angka dan huruf, maksimal 8 karakter";
            //     }
            // }
            // Validasi password yang biasa dipakai
            if ($new_password == $old_password) {
                echo "
                    <script>
                        alert('Password Baru Tidak Boleh Sama Dengan Password Lama');
                        window.location.href = 'update_user_tayangan.php?kd_user=$kd_user';
                    </script>
                ";
                exit();
            }

            $hash_password = md5($new_password);
            // Update data pengguna ke dalam database
            $update_query = "UPDATE tc_tb_user SET nm_user='$nama_user', kd_level='$kd_level',password='$konf_password' WHERE kd_user='$kd_user'";
            $result = mysqli_query($con2, $update_query);

            if ($result) {
                echo "
                    <script>
                        alert('Data Berhasil Diubah');
                        window.location.href = 'user_tayangan.php';
                    </script>
                ";
                exit();
            } else {
                echo "Gagal mengupdate data: " . mysqli_error($con);
            }
        }
    } else {
        echo "Query error: " . mysqli_error($con);
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Train Checker - information and Checklist Device on Train">
    <meta name="author" content="Developed by Denys Wiyadas - wiyadase@gmail.com">
    <link rel="icon" type="image" href="img/logos.png">

    <title>Update - User Tayangan</title>

    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="icon" href="img/favicon.ico" type="image/x-icon">

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <style>
        .bgimg {
            background-image: url("https://wallpaperaccess.com/full/2098486.jpg");
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
            width: 100%;
            height: 100vh;
            /* responsive height */
        }
    </style>

</head>

<body class="bgimg">
    <div class="container d-flex align-items-center justify-content-center">
        <!-- Outer Row -->

        <div class="col-xl-10 col-lg-12 col-md-9">
            <div class="card o-hidden border-0 shadow-lg my-5 ">
                <div class="card-body p-0 ">

                    <div class=" row">
                        <!-- <div class="col-lg-12 text-center"><img style="max-width:25%; margin-top:50px;" src="img/logos.png"></div> -->
                        <div class="col-lg-12">
                            <div class="p-3 pb-4 pt-4">
                                <div class="text-center">
                                    <h2 class="h4 text-gray-900 mb-4">Update Data User</h2>
                                </div>
                                <form method="POST">
                                    <div class=" mb-3 mt-3">
                                        <label>Nama User</label>
                                        <input type="text" name="nama_user" class="form-control" value="<?php echo $q_user['nm_user'] ?>" />
                                        <br>
                                        <!-- <label>Level</label>
                                    <input type="text" name="kd_level" class="form-control" value="<?php echo $q_user['nm_level']; ?>" readonly /> -->
                                        <label>Level</label>
                                        <select name="kd_level" class="form-control">
                                            <option value="<?php echo $q_user['kd_level']; ?>"><?php echo $q_user['nm_level']; ?></option>
                                            <!-- Masukkan pilihan level dari database di sini -->
                                        </select>
                                        <br>
                                        <label>Old Password</label>
                                        <input type="text" name="old_password" class="form-control" value="<?php echo $q_user['password'] ?>" />
                                        <br>
                                        <label>New Password</label>
                                        <input type="password" name="new_password" class="form-control" />
                                        <p style="color: red;">*valid password range [8-16]<br>
                                            You can use numbers, lowercase letters, <br>uppercase letters and consist of at least <br> one digit and one letter. </p>
                                        <label>Konfirmasi Password</label>
                                        <input type="password" name="konf_password" class="form-control" />
                                        <br>
                                    </div>
                                    <a <button href="user_tayangan.php" type="submit" class="btn btn-danger">Kembali</button> </a>
                                    <button type="submit" name="submit" class="btn btn-primary">Submit</button>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>

    </div>
    <!-- <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"></script>
    <script type="text/javascript" src="<script src=" https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>"></script> -->
</body>

</html>