<?php
	session_start();
	if($_SESSION['username']==''){
		header('Location:login.php');
	}
	include "koneksi.php";
	
?>
 <div id="page-wrapper" class="gray-bg dashbard-1">
       <div class="content-main">
	   

  		<!--banner-->	
		    <div class="banner">
		   
				<h2>
				<a href="admin.php">Home</a>
				<i class="fa fa-angle-right"></i>
				<span>Dashboard</span>
				</h2>
		    </div>
		<!--//banner-->
		
				<!--graph-->
				<link rel="stylesheet" href="css/graph.css">
				<!--//graph-->
							<script src="js/jquery.flot.js"></script>
		<!--content-->
	<div class="content-top">
		<div class="col-md-12 ">
				<!---start-chart---->
				<!----->
			<div class="grid-form">
				
									
				<div class="grid-form1">
				 	<h3 id="forms-example" class="" style="margin-bottom: 0px;">Data Produk</h3>
						
							<a href="admin.php?page=add-produk" class="btn btn-info" style="float: right;">Add Product</a><br class="clear" /><br class="clear" />
						 <table class="table table-bordered">
							<thead>
								<tr>
									<th>No</th>
									<th>Nama Produk</th>
									<th>Category Produk</th>
									<th>Gambar</th>
									
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<?php
									error_reporting(E_ERROR|E_PARSE);
									session_start();
									include "koneksi.php";
									$query = mysql_query(" select tb_produk.id_produk, tb_produk.id_kategori, tb_produk.nama_produk, tb_kategori.nama_kategori, 
									tb_produk.gambar, tb_produk.desk_produk from tb_produk INNER JOIN tb_kategori 
									ON tb_kategori.id_kategori=tb_produk.id_kategori Order by id_kategori ASC");
									$i = 1;
									while($baris = mysql_fetch_array($query)){
										echo "<tr>
												<td align='center'>$i</td>
												<td>$baris[nama_produk]</td>
												<td>$baris[nama_kategori]</td>
												<td><img src='$baris[gambar]' width=150></td>
												
												<td>
													<a href='admin.php?page=edit-produk&id=$baris[id_produk]'><i class='fa fa-pencil fa-lg'></i></a>
													<a href='proses-delete-produk.php?id=$baris[id_produk]' onclick='return delete(\"Apa anda yakin untuk menghapus".$baris["nama_produk"]."?\")'><i class='fa fa-trash fa-lg'></i></a>
												</td>			
												</tr>";
									$i++;
									}
										?>
							</tbody>
						</table>

				</div>
	
			</div>
			
		</div>
		<div class="clearfix"> </div>
	</div>
	<div class="content-top">
		<div class="col-md-12 ">
				<!---start-chart---->
				<!----->
			<div class="grid-form">
				
									
				<div class="grid-form1">
				 	<h3 id="forms-example" class="" style="margin-bottom: 0px;">Data Kategori</h3>
					<a href="admin.php?page=add-kategori" class="btn btn-info" style="float: right;">Add Kategori</a><br class="clear" /><br class="clear" />
						 <table class="table table-bordered">
							<thead>
								<tr>
									<th>No</th>
									<th>Nama Kategori</th>
									<th style="width: 532px;">Deskripsi</th>
									<th>Gambar</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<?php
									error_reporting(E_ERROR|E_PARSE);
									session_start();
									include "koneksi.php";
									$query = mysql_query("select * from tb_kategori");
									$i = 1;
									while($baris = mysql_fetch_array($query)){
										echo "<tr>
												<td align='center'>$i</td>
												<td>$baris[nama_kategori]</td>
												<td>$baris[desk_kategori]</td>
												<td><img src='$baris[gambar]' width=150></td>
												<td>
													<a href='admin.php?page=edit-kategori&id=$baris[id_kategori]'><i class='fa fa-pencil fa-lg'></i></a>
													<a href='proses-delete-kategori.php?id=$baris[id_kategori]' onclick='return delete(\"Apa anda yakin untuk menghapus".$baris["nama_kategori"]."?\")'><i class='fa fa-trash fa-lg'></i></a>
												</td>			
												</tr>";
									$i++;
									}
										?>
							</tbody>
						</table>

				</div>
	
			</div>
		</div>
		<div class="clearfix"> </div>
	</div>
	<div class="content-top">
		<div class="col-md-12 ">
				<!---start-chart---->
				<!----->
			<div class="grid-form">
				
									
				<div class="grid-form1">
				 	<h3 id="forms-example" class="" style="margin-bottom: 0px;">Data Portofolio</h3>
					<a href="admin.php?page=add-portofolio" class="btn btn-info" style="float: right;">Add Portofolio</a><br class="clear" /><br class="clear" />
						 <table class="table table-bordered">
							<thead>
								<tr>
									<th>No</th>
									<th>Gambar</th>
									<th>Judul</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<?php
									error_reporting(E_ERROR|E_PARSE);
									session_start();
									include "koneksi.php";
									$query = mysql_query("select * from tb_portofolio");
									$i = 1;
									while($baris = mysql_fetch_array($query)){
										echo "<tr>
												<td align='center'>$i</td>
												<td><img src='$baris[gambar]' width=150></td>
												<td>$baris[port_tittle]</td>
												<td>
													<a href='admin.php?page=edit-portofolio&id=$baris[id_port]'><i class='fa fa-pencil fa-lg'></i></a>
													<a href='proses-delete-portofolio.php?id=$baris[id_port]' onclick='return delete(\"Apa anda yakin untuk menghapus".$baris["port_tittle"]."?\")'><i class='fa fa-trash fa-lg'></i></a>
												</td>			
												</tr>";
									$i++;
									}
										?>
							</tbody>
						</table>

				</div>
	
			</div>
		</div>
		<div class="clearfix"> </div>
	</div>
		<!---->
	
  
		
		<!--//content-->