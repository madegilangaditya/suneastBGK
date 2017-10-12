 <?php
 
include "koneksi.php";
?>
 <div id="page-wrapper" class="gray-bg dashbard-1">
       <div class="content-main">
	   

  		<!--banner-->	
		    <div class="banner">
		   
				<h2>
				<a href="admin.php">Home</a>
				<i class="fa fa-angle-right"></i>
				<span>Data Admin</span>
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
				
							<?php
									error_reporting(E_ERROR|E_PARSE);
									session_start();
									
									$id=$_GET['id'];
									$hasil = mysql_query(" select * from tb_admin where id_admin=$id");
										$baris=mysql_fetch_array($hasil);

										$nama=$baris['username'];
										
							?>
				<div class="grid-form1">
				 	<h3 id="forms-example" class="" style="margin-bottom: 0px;">Edit Admin</h3>
					<form name="input_data" action="proses-add-admin.php" method="post" enctype="multipart/form-data">
						<div class="form-group">
							<label for="exampleInputEmail1">Username</label>
							<input type="text" class="form-control" name="nama" id="nama" placeholder="Username" value="<?php echo "$nama";?>">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Password Lama</label>
							<input type="Password " class="form-control" name="lpwd" id="lpwd" placeholder="Password Lama">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Password Baru</label>
							<input type="Password " class="form-control" name="bpwd" id="bpwd" placeholder="Password Baru">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Confirm Password</label>
							<input type="Password" class="form-control" name="cpwd" id="pwd" placeholder="Confirm Password">
						</div>
						

  
  
			<div class="form-group">
				<button class="btn-success btn" name="submit" style="margin-right: 5em;">Submit</button>
				<button onclick="history.back();" type="button" class="btn-danger btn">Back</button>
			</div>
</form>

</div>
	
			</div>
		</div>
		<div class="clearfix"> </div>
	</div>
		<!---->
	
  
		
		<!----->
		