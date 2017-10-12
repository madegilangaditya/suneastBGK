
<body>
<!--start-home-->


<!--//header-top-->
 <!-- //Line Slider -->
		<div class="top_banner two">
			<div class="container">
			       <div class="sub-hd-inner">
						<h3 class="tittle">BLOG</h3>
					</div>
			</div>
		</div>
		<div class="main-textgrids">
				 		<div class="container">
				 			<?php 
								$query = "SELECT * FROM tb_blog ORDER BY id_blog DESC";
								$result = mysql_query($query);
								while ($row = mysql_fetch_array($result)) {	
							 ?>
							<div class="col-md-12" style="padding-left: 0px;padding-right: 0px;margin-bottom: 30px;">								
					 			<div class="col-md-3 ab-pic">
					 				<a href="index.php?page=read&id=<?php echo $row['id_blog'] ?>">					 					
					 					<img src="<?php echo "adminpage/".$row['image'] ?>" alt=" " />
					 				</a>
					 			</div>
					 			<div class="col-md-7 ab-text">
					 				<h2 style="font-weight: bold"><?php echo $row['title'] ?></h2>
					 				<p style="margin-bottom: 5px;">					 					
					 				<?php echo $row['description'] ?>
					 				</p>
									<a href="index.php?page=read&id=<?php echo $row['id_blog'] ?>" class="btn btn-success">Read More</a>
					 			</div>
							</div>
				 			<?php } ?>
					 		</div>
				 		</div>
				 </div>

		
	
</body>
</html>