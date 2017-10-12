 <div id="page-wrapper" class="gray-bg dashbard-1">
       <div class="content-main">
	   

  		<!--banner-->	
		    <div class="banner">
		   
				<h2>
				<a href="admin.php">Home</a>
				<i class="fa fa-angle-right"></i>
				<span>Data Kategori</span>
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
		<!---->
	
  
		
		<!----->
		