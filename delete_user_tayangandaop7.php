<?php
// Panggil file koneksi ke database
include('koneksi_ty7.php');

// Cek apakah parameter kd_user telah diterima dari URL
if (isset($_GET['kd_user'])) {
    // Tangkap kd_user dari URL
    $kd_user = $_GET['kd_user'];

    // Buat query untuk menghapus pengguna berdasarkan kd_user
    $query = "DELETE FROM tc_tb_user WHERE kd_user = '$kd_user'";

    // Jalankan query
    if ($con->query($query) === TRUE) {
        // Redirect kembali ke halaman sebelumnya dengan pesan sukses
        header("Location: user_tayangandaop7.php?delete_success=true");
        exit();
    } else {
        // Redirect kembali ke halaman sebelumnya dengan pesan error jika query gagal
        header("Location: user_tayangandaop7.php?delete_error=true");
        exit();
    }
} else {
    // Redirect kembali ke halaman sebelumnya jika parameter kd_user tidak diterima
    header("Location:user_tayangandaop7.php.php");
    exit();
}
