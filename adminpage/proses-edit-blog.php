<?php
	session_start();
	if($_SESSION['username']==''){
		header('Location:login.php');
	}
			include "koneksi.php";
			$title=$_POST ['title'];
			$description=$_POST ['description'];
			$blog=$_POST ['article'];
			$image=$_POST ['image'];
			$id = $_POST['id'];

			$folder = "images/suneast";
			$tmp_name = $_FILES["images"]["tmp_name"];
			$img_name = $folder."/".$_FILES["images"]["name"];
			
			if(empty($_FILES["images"]["tmp_name"])){
				$query = mysql_query("UPDATE tb_blog SET title = '$title',description='$description',blog='$blog' WHERE id_blog = $id");
			}else{
				move_uploaded_file($tmp_name, $img_name);	
				$query = mysql_query("UPDATE tb_blog SET title = '$title',description='$description',blog='$blog',image='$img_name' WHERE id_blog = $id");
			}
			
			header('location: admin.php?page=data-blog');	
	
			
?>