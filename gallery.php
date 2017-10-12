

<body>
<!--start-home-->

<div class="main-header" id="house">

 <!-- //Line Slider -->
		<div class="top_banner two">
			<div class="container">
			       <div class="sub-hd-inner">
						<h3 class="tittle">OUR <span>Portofolio</span></h3>
					</div>
			</div>
		</div>
	<!--/gallery-->	
<div id="gallery" class="gallery">
	<div class="container">
		<div class="gallery_gds w3l">
				
            <div class="filtr-container wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.1s">
			<?php
					$result1 = mysql_query("SELECT * FROM tb_portofolio");
					while($baris1 = mysql_fetch_array($result1)){
						echo'<div class=" col-md-4 filtr-item" data-category="1, 5" data-sort="Busy streets">
					<a href="images/g1.jpg" class="b-link-stripe b-animate-go  swipebox">
						<div class="item item-type-double">
							<div class="item-hover">
								<div class="item-info">
									<div class="date">SUNEAST</div>			
									<div class="line"></div>			
									<div class="headline">'.$baris1['port_tittle'].'</div>
									<div class="line"></div>
								</div>
								<div class="mask"></div>
							</div>
							<div class="item-img"><img src="adminpage/'.$baris1['gambar'].'"  alt=" " /></div>
						</div>
					</a>
                </div>';
							
					}
				?>

              
               <div class="clearfix"> </div>
            </div>
		</div>
	</div>
	</div>
	<!-- swipe box js -->
				<script src="js/jquery.swipebox.min.js"></script> 
					<script type="text/javascript">
						jQuery(function($) {
							$(".swipebox").swipebox();
						});
				</script>
			<!-- //swipe box js -->

	<!--//gallery-->
	 <!-- Include jQuery & Filterizr -->
    
    <script src="js/jquery.filterizr.js"></script>
    <script src="js/controls.js"></script>

    <!-- Kick off Filterizr -->
    <script type="text/javascript">
        $(function() {
            //Initialize filterizr with default options
            $('.filtr-container').filterizr();
        });
    </script>
	<!--//gallery-->


</body>
</html>