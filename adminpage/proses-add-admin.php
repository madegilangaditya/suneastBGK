<?php
	session_start();
	if($_SESSION['username']==''){
		header('Location:login.php');
	}
	include "koneksi.php";
			$nama=$_POST ['nama'];
			$pwd=$_POST ['pwd'];
			$cpwd=$_POST ['cpwd'];
			$query = mysql_query("select * from tb_admin");
			$baris=mysql_fetch_array($query);
			if ($nama==$baris['username']){
				echo "<script>alert('Username sudah ada'); location.href='admin.php?page=add-admin' </script>";
			}else if($nama!=$baris['username']){
				if($pwd==$cpwd){
			$hasil = mysql_query("
			INSERT INTO tb_admin
			(username, password)
			VALUES
			('$nama','$pwd')
		") or die(mysql_error());
		
		//echo "<script>alert('Masukan Produk Berhasil'); location.href='admin.php?page=data-produk'</script>";
		header('location: admin.php?page=data-admin');	
	}else{
		echo "<script>alert('Password Tidak Sama'); location.href='admin.php?page=add-admin' </script>";
	}
			}
	
			
?>