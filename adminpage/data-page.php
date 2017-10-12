 <div id="page-wrapper" class="gray-bg dashbard-1">
       <div class="content-main">
	   

  		<!--banner-->	
		    <div class="banner">
		   
				<h2>
				<a href="admin.php">Home</a>
				<i class="fa fa-angle-right"></i>
				<span>Data Page</span>
				</h2>
		    </div>
		<!--//banner-->
		
			
		<!--content-->
	<div class="content-top">
		<div class="col-md-12 ">
				
				
			<div class="grid-form">
				
									
				<div class="grid-form1">
				 	<h3 id="forms-example" class="" style="margin-bottom: 0px;">Data Page</h3>
					<a href="admin.php?page=add-page" class="btn btn-info" style="float: right;">Add Page</a><br class="clear" /><br class="clear" />
						 <table class="table table-bordered">
							<thead>
								<tr>
									<th style="width: 200px;">Image</th>
									<th>Description</th>
									<th style="width: 100px;">Action</th>
								</tr>
							</thead>
							<tbody>
								<?php 
									$query = "SELECT * FROM tb_page ORDER BY id_page DESC";
									$result = mysql_query($query);
									while ($row = mysql_fetch_array($result)) {	
								 ?>
								<tr>
									<td>
										<img src="<?php echo $row['image'] ?>" alt="" width="100%">
									</td>
									<td>
										<h4><?php echo $row['title']; ?></h4>
										<p>
											<?php echo $row['description']; ?>
										</p>										
									</td>
									<td>
										<a href="admin.php?page=edit-page&id=<?php echo $row['id_page'] ?>" class="btn btn-success" >
											<i class="fa fa-pencil" style="color:#fff"></i>
										</a>
										<a href="admin.php?page=proses-delete-page&id=<?php echo $row['id_page'] ?>" class="btn btn-danger" class="btn btn-danger" onClick="return confirm('Delete Page  ?')">
											<i class="fa fa-trash" style="color:#fff"></i>
										</a>	
										
									</td>
								</tr>
								<?php 
									}
								 ?>
							</tbody>
						</table>

				</div>
	
			</div>
		</div>
		<div class="clearfix"> </div>
	</div>
	
		