<?php
	error_reporting(E_ERROR|E_PARSE);
	session_start();
	if($_SESSION['username']==''){
		header('Location:login.php');
	}
	include "koneksi.php";
	$id=$_GET['id'];
	$nama = $_POST['nama'];
	$gambar=$_POST['gambar'];
	
	
	if(!empty($_FILES["gambar"]["tmp_name"])){
				unlink($_POST['gambar']);
				$folder = "images/suneast";
				$tmp_name = $_FILES["gambar"]["tmp_name"];
				$name = $folder."/".$_FILES["gambar"]["name"];					
				move_uploaded_file($tmp_name, $name);
			}
	
	
	if(!empty($name)){
		$hasil = mysql_query ("update tb_portofolio set port_tittle='$nama', gambar='$name' where id_port='$id' ");
	}else{
		$hasil = mysql_query ("update tb_portofolio set port_tittle='$nama' where id_port='$id' ");
	}
		//echo "<script>alert('Edit Barang Berhasil'); location.href='daftar_barang.php'</script>";
		header('location: admin.php?page=data-portofolio');	
	
?>