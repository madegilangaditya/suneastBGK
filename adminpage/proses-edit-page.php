<?php
	session_start();
	if($_SESSION['username']==''){
		header('Location:login.php');
	}
			include "koneksi.php";
			$title=$_POST ['title'];
			$description=$_POST ['description'];
			$article=$_POST ['article'];
			$image=$_POST ['image'];
			$id = $_POST['id'];

			$folder = "images/suneast";
			$tmp_name = $_FILES["images"]["tmp_name"];
			$img_name = $folder."/".$_FILES["images"]["name"];
			
			if(empty($_FILES["images"]["tmp_name"])){
				$query = mysql_query("UPDATE tb_page SET title = '$title',description='$description',article='$article' WHERE id_page = $id");
			}else{
				move_uploaded_file($tmp_name, $img_name);	
				$query = mysql_query("UPDATE tb_page SET title = '$title',description='$description',article='$article',image='$img_name' WHERE id_page = $id");
			}
			
			header('location: admin.php?page=data-page');	
	
			
?>