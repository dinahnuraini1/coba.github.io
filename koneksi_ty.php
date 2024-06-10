<?php

$con2 = mysqli_connect('localhost','root','','tayangan');


if( !$con2 ){
  die('Koneksi Database Error' .mysqli_connect_error());
}

?>