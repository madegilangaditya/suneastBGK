<?php
	
	if($_SESSION['username']==''){
		header('Location:login.php');
	}


	$id = $_GET['id'];
	$query = mysql_query("DELETE FROM tb_page WHERE id_page=$id ");
	header('location: admin.php?page=data-page');
?>