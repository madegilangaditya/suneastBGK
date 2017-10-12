

<body>
<!--start-home-->

<div class="main-header" id="house">
			
	<div class="top_banner two">
			<div class="container">
			
			       <div class="sub-hd-inner">
						<h3 class="tittle">Gas<span>Range</span></h3>
					</div>
			</div>
		</div>
		
	
	
	<div class="container">						
		<div class="main-textgrids">		 			
		<!--<div id="sidebar">
			<div class="widget col-md-4">
				<div class="widget-title"><h3>Menu Utama</h3></div>
				<ul>
					<li> <a href="#">Home</a></li>
					<li> <a href="#">Profile</a></li>
					<li> <a href="#">Portfolio</a></li>
					<li> <a href="#">Blog</a></li>
					<li> <a href="#">Contact</a></li>
				</ul>
			</div>
		</div> -->
				<?php
					$result1 = mysql_query("SELECT * FROM tb_produk where id_kategori=2");
					while($baris1 = mysql_fetch_array($result1)){
						echo'<div class="panel-body">
						<h3 class="title" style="text-align:left;font-weight: 800;">'.$baris1['nama_produk'].'</h3>
								<div class="col-md-5 ab-pic" style="display:inline-block;">
				 					<img src="adminpage/'.$baris1['gambar'].'"  alt=" " />
				
				 			</div>
							<div class="col-md-5 " style="padding: 30px;">
							'.$baris1['desk_produk'].'
							</div>
							</div>';
							
					}
				?>
			
							
							<!--<ul class="list">
								<a href="single.html">
									<li>
									<section class="list-left">
									<h5 class="title">SE-BRF-15H</h5>
									<span class="adprice">Dimension(MM)	:	610x810x2020</span>
									<p class="catpath">Type	:	SE-BRF-15H "Profer 15Tray" </p>
									</section>
									<section class="list-right">
									<span class="date">Power	:	2.600 Watt</span>
									<span class="cityname">Voltage	:	220V/1P/50Hz</span>
									</section>
									<div class="clearfix"></div>
									</li> 
								</a>-->
							
					
				 			
				 			<div class="clearfix"> </div>
				 			
		</div>
				 </div>


	</div>
</body>