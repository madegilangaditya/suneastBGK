<?php
	error_reporting(E_ERROR|E_PARSE);
	session_start();
	if($_SESSION['username']==''){
		header('Location:login.php');
	}
	include "koneksi.php";
	$id=$_GET['id'];
	$nama = $_POST['nama'];
	$kategori=$_POST['kategori'];
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
		$hasil = mysql_query ("update tb_produk set nama_produk='$nama', id_kategori='$kategori',  gambar='$name', desk_produk='$desk' where id_produk='$id' ");
	}else{
		$hasil = mysql_query ("update tb_produk set nama_produk='$nama', id_kategori='$kategori', desk_produk='$desk' where id_produk='$id' ");
	}
		//echo "<script>alert('Edit Barang Berhasil'); location.href='daftar_barang.php'</script>";
		header('location: admin.php?page=data-produk');	
	
?>