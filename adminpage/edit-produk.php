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
				<span>Data Produk</span>
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
				 	<h3 id="forms-example" class="" style="margin-bottom: 0px;">Edit Produk</h3>
							<?php
									error_reporting(E_ERROR|E_PARSE);
									session_start();
									
									$id=$_GET['id'];
									$hasil = mysql_query(" select tb_produk.id_produk, tb_produk.nama_produk, tb_produk.id_kategori, 
									tb_produk.gambar, tb_produk.desk_produk from tb_produk INNER JOIN tb_kategori 
									ON tb_kategori.id_kategori=tb_produk.id_kategori where tb_produk.id_produk=$id");
										$baris=mysql_fetch_array($hasil);
										$id=$baris['id_produk'];
										$nama=$baris['nama_produk'];
										$kategori=$baris['id_kategori'];
										$gambar=$baris['gambar'];
										$desk=$baris['desk_produk'];
									
							?>
					<form name="input_data" action="<?php echo "proses-edit-produk.php?id=$id"; ?>" method="post" enctype="multipart/form-data" >
						<div class="form-group">
						<input name="id" type="hidden" value="<?php echo "$id"; ?>">
							<label for="exampleInputEmail1">Nama Produk</label>
							<input type="text" class="form-control" name="nama" id="nama" placeholder="Nama Produk" value="<?php echo "$nama"; ?>">
						</div>
						<div class="form-group">
									<label for="selector1">Kategori Produk</label>
									<select name="kategori" id="kategori" class="form-control">
										<?php
										$hasil5=mysql_query("select * from tb_kategori where id_kategori = $kategori");
										$baris=mysql_fetch_array($hasil5);
										echo"<option value='$baris[id_kategori]'>$baris[nama_kategori]</option>";
										$hasil4=mysql_query("select * from tb_kategori");
										while ($baris=mysql_fetch_array($hasil4)){
										echo"<option value='$baris[id_kategori]'>$baris[nama_kategori]</option>";
												} 
										?>
										
									</select>
						</div>
						<div class="form-group">
							<label for="comment">Deskripsi</label>
							<textarea style="height:250px;"class="ckeditor" rows="5" id="deskripsi" name="deskripsi" value=""><?php echo "$desk"; ?></textarea>
						</div>
						<div class="form-group">
							<img src="<?php echo"$gambar"; ?>" width="150"><br><br>
							<label for="exampleInputFile">Pilih Gambar</label>
							<input type="file" id="gambar" name="gambar">
							<p class="help-block">Gambar jangan besar</p>
						</div>
  
  
			<div class="form-group">
				<button class="btn-success btn" style="margin-right: 5em;">Submit</button>
				<button class="btn-danger btn">Back</button>
			</div>
</form>



<script>
		 CKEDITOR.replace( 'productDesc', {
				toolbar: [{ name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ], items: [ 'Source', '-', 'Bold', 'Italic', 'Underline', 'Strike', 'Image', 'NumberedList','BulletedList', 'Table', 'Subscript', 'Superscript', '-', 'RemoveFormat', 'SpecialChar'] },
				{name: 'links', items: ['Link', 'Unlink', 'CreateDiv']}
				],
				filebrowserBrowseUrl : 'ckfinder/ckfinder.html',
				filebrowserImageBrowseUrl : 'ckfinder/ckfinder.html?type=Images',
				filebrowserFlashBrowseUrl : 'ckfinder/ckfinder.html?type=Flash',
				filebrowserUploadUrl : 'ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
				filebrowserImageUploadUrl : 'ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
				filebrowserFlashUploadUrl : 'ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash'
			});
</script>


</div>
	
			</div>
		</div>
		<div class="clearfix"> </div>
	</div>
		<!---->
	
  
		
		<!----->
		