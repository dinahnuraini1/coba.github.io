<?php

$con = mysqli_connect('localhost','root','','user_management');


if( !$con ){
  die('Koneksi Database Error' .mysqli_connect_error());
}

?>