<?php
session_start();

include 'koneksi_login.php';

$user = $_POST['user'];
$pasw = md5($_POST['pass']); // Hash password yang dimasukkan oleh pengguna dengan MD5

// Lakukan pengecekan user dan password dengan kd_user atau nm_user
$data_user = "SELECT * FROM tc_tb_user WHERE (kd_user='$user' OR nm_user='$user') AND password='$pasw'";
$login = $con->query($data_user);
$cek = mysqli_num_rows($login);

if ($cek > 0) {
	// Ambil data pengguna dan level
 	// $data_user = "SELECT * FROM tc_tb_user WHERE (kd_user='$user' OR nm_user='$user')";
	// $q_user = $con->query($data_user);
	$data=mysqli_fetch_assoc($login);
	$_SESSION['username'] = $data['nm_user'];
	$_SESSION['lvl'] = $data['kd_level']; // Simpan level pengguna dalam sesi
    $_SESSION['status'] = 'login';

	if ($data['kd_level']=="2") {
		// $r_user = $login->fetch_assoc();
		// $name = $r_user['nm_user'];
		// $lvl = $r_user['kd_level'];

		// $_SESSION['username'] = $user;
		// $_SESSION['nama'] = $name;
		// $_SESSION['lvl'] = "2";
		// $_SESSION['status'] = 'login';
		$_SESSION['lvl']="2";
		$agent = @$_SERVER['HTTP_USER_AGENT'];
		$ip = @$_SERVER['REMOTE_ADDR'];

		// // Simpan data login ke dalam tabel rilex_login_log
		// $input_log = "INSERT INTO rilex_login_log (username, ip_address, user_agent, login_time) 
        //             VALUES ('$user', '$ip', '$agent', NOW())";
		// $con->query($input_log);

		header("location:dashboard.php");

	// }else if ($data['kd_level']=="1") {
	// 	$_SESSION['lvl'] = "1";
	// 	// $r_user = $login->fetch_assoc();
	// 	// $name = $r_user['nm_user'];
	// 	// $lvl = $r_user['kd_level'];
	// 	// $_SESSION['username'] = $user;
	// 	// $_SESSION['nama'] = $name;
	// 	// $_SESSION['lvl'] = "1";
	// 	// $_SESSION['status'] = 'login';

	// 	$agent = @$_SERVER['HTTP_USER_AGENT'];
	// 	$ip = @$_SERVER['REMOTE_ADDR'];

	// 	// Simpan data login ke dalam tabel rilex_login_log
	// 	// $input_log = "INSERT INTO rilex_login_log (username, ip_address, user_agent, login_time) 
    //     //             VALUES ('$user', '$ip', '$agent', NOW())";
	// 	// $con->query($input_log);

	// 	header("location:index_non_us.php");

	} else {
		echo "Error: " . $con->error;
	}
}else
?>
<script language="javascript">
	alert("Maaf, Username atau Password Anda salah!!");
	document.location = "login.php";
</script>
}
<?php
?>