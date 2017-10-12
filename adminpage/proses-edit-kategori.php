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
	$desk=$_POST['deskripsi'];
	
	if(!empty($_FILES["gambar"]["tmp_name"])){
				unlink($_POST['gambar']);
				$folder = "images/suneast";
				$tmp_name = $_FILES["gambar"]["tmp_name"];
				$name = $folder."/".$_FILES["gambar"]["name"];					
				move_uploaded_file($tmp_name, $name);
			}
	
	
	if(!empty($name)){
		$hasil = mysql_query ("update tb_kategori set nama_kategori='$nama', gambar='$name', desk_kategori='$desk' where id_kategori='$id' ");
	}else{
		$hasil = mysql_query ("update tb_kategori set nama_kategori='$nama', desk_kategori='$desk' where id_kategori='$id' ");
	}
		//echo "<script>alert('Edit Barang Berhasil'); location.href='daftar_barang.php'</script>";
		header('location: admin.php?page=data-kategori');	
	
?>