<?php
	
	if($_SESSION['username']==''){
		header('Location:login.php');
	}


	$id = $_GET['id'];
	$query = mysql_query("DELETE FROM tb_blog WHERE id_blog=$id ");
	header('location: admin.php?page=data-blog');
?>