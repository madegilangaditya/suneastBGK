<?php
	session_start();
	if($_SESSION['username']==''){
		header('Location:login.php');
	}
	include "koneksi.php";
		
		$hasil = mysql_query("DELETE FROM tb_motor WHERE id_motor='$_GET[id]'");
		header('Location:admin.php?page=data-produk');

?>