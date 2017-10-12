<!-- //Line Slider -->
	 <div class="top_banner">
		<!-- SVG Arrows -->
		<div class="svg-wrap">
			<svg width="64" height="64" viewBox="0 0 64 64">
				<path id="arrow-left" d="M46.077 55.738c0.858 0.867 0.858 2.266 0 3.133s-2.243 0.867-3.101 0l-25.056-25.302c-0.858-0.867-0.858-2.269 0-3.133l25.056-25.306c0.858-0.867 2.243-0.867 3.101 0s0.858 2.266 0 3.133l-22.848 23.738 22.848 23.738z" />
			</svg>
			<svg width="64" height="64" viewBox="0 0 64 64">
				<path id="arrow-right" d="M17.919 55.738c-0.858 0.867-0.858 2.266 0 3.133s2.243 0.867 3.101 0l25.056-25.302c0.858-0.867 0.858-2.269 0-3.133l-25.056-25.306c-0.858-0.867-2.243-0.867-3.101 0s-0.858 2.266 0 3.133l22.848 23.738-22.848 23.738z" />
			</svg>
		</div>
		
		<div class="sleekslider">
			<!-- Slider Pages -->
			<div class="slide active bg-1">
				<div class="slide-container">
					<div class="slide-content">
						<p>Welcome to <span class="s-p">Sun East</span></p>	
					</div>

				</div>
			</div>
			<div class="slide bg-2">
				<div class="slide-container">
					<div class="slide-content">
						<p>Welcome to <span class="s-p">Sun East</span></p>	

					</div>
				</div>				
			</div>
			<div class="slide bg-3">
				<div class="slide-container">
					<div class="slide-content">
						<p>Welcome to <span class="s-p">Sun East</span></p>	

					</div>
				</div>				
			</div>
			<div class="slide bg-4">
				<div class="slide-container">
					<div class="slide-content">
						<p>Welcome to <span class="s-p">Sun East</span></p>	

					</div>
				</div>				
			</div>
			<div class="slide bg-5">
				<div class="slide-container">
					<div class="slide-content">
					<p>Welcome to <span class="s-p">Sun East</span></p>	

					</div>
				</div>				
			</div>

			<!-- Navigation Arrows with Thumbnails -->
			<nav class="nav-split">
				<a class="prev" href="">
					<span class="icon-wrap"><svg class="icon" width="22" height="22" viewBox="0 0 64 64"><use xlink:href="#arrow-left" /></svg></span>
					
				</a>
				<a class="next" href="">
					<span class="icon-wrap"><svg class="icon" width="22" height="22" viewBox="0 0 64 64"><use xlink:href="#arrow-right" /></svg></span>
					
				</a>
			</nav>

			<!-- Pagination -->
			<nav class="pagination">
				<span class="current"></span>
				<span></span>
				<span></span>
				<span></span>
				<span></span>
			</nav>

			<!-- Navigation Tabs -->
			
		</div>

		<!-- JavaScripts -->
		<script type="text/javascript" src="js/sleekslider.min.js"></script>
		<script type="text/javascript" src="js/app.js"></script>
      <!--welcome-->
 </div>
 
 		<!-- Services -->
		<div class="services" id="services">
			<div class="container">

				<div class="inner-w3">
					    <div class="sub-hd">
						<h3 class="tittle">ABOUT <span>US</span></h3>
					<p class="sub-para"style="margin-bottom: 100px;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem  </p>
					</div>
					</div>
				 
				<div class="inner-w3">
					<div class="sub-hd">
						<h3 class="tittle">OUR <span>Product</span></h3>
					</div>
					</div>
				<div class="inner_tabs">
				   

				 
					<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
					
						<ul id="myTab" class="nav nav-tabs" role="tablist">
				<?php						
      					$result1 = mysql_query("SELECT * FROM tb_kategori");
      					while($baris1 = mysql_fetch_array($result1)){
						if ($baris1['id_kategori']==1){
							echo '<li role="presentation" class="active" style="width:285px"><a href="#expeditions" id="expeditions-tab" role="tab" data-toggle="tab" aria-controls="'.$baris1['id_kategori'].'" aria-expanded="true">'.$baris1['nama_kategori'].'</a></li>';	
						}else if ($baris1['id_kategori']==2){
							echo '<li role="presentation" style="width:285px"><a href="#tours" id="tours-tab" role="tab" data-toggle="tab" aria-controls="'.$baris1['id_kategori'].'" aria-expanded="true">'.$baris1['nama_kategori'].'</a></li>';
						}else if ($baris1['id_kategori']==3){
							echo '<li role="presentation" style="width:285px"><a href="#tree" id="tree-tab" role="tab" data-toggle="tab" aria-controls="'.$baris1['id_kategori'].'" aria-expanded="true">'.$baris1['nama_kategori'].'</a></li>';
						}else if ($baris1['id_kategori']==4){
							echo '<li role="presentation" style="width:285px"><a href="#safari" id="tree-tab" role="tab" data-toggle="tab" aria-controls="'.$baris1['id_kategori'].'" aria-expanded="true">'.$baris1['nama_kategori'].'</a></li>';
						}
      				}
      			?>		
						</ul>
						<div id="myTabContent" class="tab-content">
				<?php			
      					$result1 = mysql_query("SELECT * FROM tb_kategori");
      					while($baris1 = mysql_fetch_array($result1)){
						
						if ($baris1['id_kategori']==1){
							echo '<div role="tabpanel" class="tab-pane fade in active" id="expeditions" aria-labelledby="expeditions-tab">
									<div class="col-md-5 col-sm-5 tab-image">
										<img src="adminpage/'.$baris1['gambar'].'"  alt="Medicinal">
									</div>
									<div class="col-md-7 col-sm-7 tab-info">
									 '.$baris1['desk_kategori'].'
								</div>
								<div class="clearfix"></div>
							</div>';

						}else if ($baris1['id_kategori']==2){
							echo '<div role="tabpanel" class="tab-pane fade" id="tours" aria-labelledby="tours-tab">
									<div class="col-md-5 col-sm-5 tab-image">
										<img src="adminpage/'.$baris1['gambar'].'"  alt="Medicinal">
									</div>
									<div class="col-md-7 col-sm-7 tab-info">
									'.$baris1['desk_kategori'].'
									</div>
								<div class="clearfix"></div>
							</div>';
						}else if ($baris1['id_kategori']==3){
							echo '<div role="tabpanel" class="tab-pane fade" id="tree" aria-labelledby="tree-tab">
									<div class="col-md-5 col-sm-5 tab-image">
										<img src="adminpage/'.$baris1['gambar'].'"  alt="Medicinal">
									</div>
									<div class="col-md-7 col-sm-7 tab-info">
									'.$baris1['desk_kategori'].'
									</div>
								<div class="clearfix"></div>
							</div>';
						}else if ($baris1['id_kategori']==4){
							echo '<div role="tabpanel" class="tab-pane fade" id="safari" aria-labelledby="safari-tab">
									<div class="col-md-5 col-sm-5 tab-image">
										<img src="adminpage/'.$baris1['gambar'].'"  alt="Medicinal">
									</div>
									<div class="col-md-7 col-sm-7 tab-info">
									'.$baris1['desk_kategori'].'
									</div>
								<div class="clearfix"></div>
							</div>';
						}
						
						}
      			?>		


						</div>
					</div>
				</div>

				
			</div>
		</div>
		<!-- //Services -->
		<!--medicinal-->
			<div class="medicinal-w3">
				<div class="container">
				    <div class="sub-hd">
						<h3 class="tittle two">OUR <span>SERVICES</span></h3>
					</div>
					<div class="medicinal-w3-grids one">
						<div class="col-md-6 medicinal-w3-grid">
							<div class="col-md-8 medicinal-w3-left">
								<h4>LOREM IPSUM DOLOR</h4>
								<p>sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. </p>
							</div>
							<div class="col-md-4 medicinal-w3-right">
								<div class="hi-icon-wrap hi-icon-effect-7 hi-icon-effect-7b">
									<a class="hi-icon icon1"></a>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="col-md-6 medicinal-w3-grid">
							<div class="col-md-4 medicinal-w3-right">
								<div class="hi-icon-wrap hi-icon-effect-7 hi-icon-effect-7b">
									<a class="hi-icon icon2"></a>
								</div>
							</div>
							<div class="col-md-8 medicinal-w3-left1">
								<h4>LOREM IPSUM DOLOR</h4>
								<p>sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. </p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="medicinal-w3-grids">
						<div class="col-md-6 medicinal-w3-grid">
							<div class="col-md-8 medicinal-w3-left">
								<h4>LOREM IPSUM DOLOR</h4>
								<p>sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. </p>
							</div>
							<div class="col-md-4 medicinal-w3-right">
								<div class="hi-icon-wrap hi-icon-effect-7 hi-icon-effect-7b">
									<a class="hi-icon icon3"></a>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="col-md-6 medicinal-w3-grid">
							<div class="col-md-4 medicinal-w3-right">
								<div class="hi-icon-wrap hi-icon-effect-7 hi-icon-effect-7b">
									<a class="hi-icon icon4"></a>
								</div>
							</div>
							<div class="col-md-8 medicinal-w3-left1">
								<h4>LOREM IPSUM DOLOR</h4>
								<p>sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi. </p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<!--medicinal-->
			<div class="grid_2" id="tender" style="padding-bottom:0px">
   	 <div id="review" class="testimonials-review" style="padding-top:0px">
		<div class="container">
		<div class="sub-hd">
						<h3 class="tittle lost">REFERENSI <span>CLIENT</span></h3>
					</div>
				<div class="testimonials">
				  <div class="monials">
				      <!--//screen-gallery-->
						<div class="sreen-gallery-cursual">
							 <!-- required-js-files-->
							
							        <script>
							    $(document).ready(function() {
							      $("#owl-demo").owlCarousel({
							        items : 1,
							        lazyLoad : true,
							        autoPlay : true,
							        navigation : false,
							        navigationText :  false,
							        pagination : true,
							      });
							    });
							    </script>
								 <!--//required-js-files-->
						       <div id="owl-demo" class="owl-carousel">
					                   <div class="item-owl">

                                            <p class="speech">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque id arcu neque, at convallis est felis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque id arcu neque, at convallis est felis.</p>
                                            <div class="client-info">
                                                <img src="gambar/32.png" alt=" " />

                                                <h4>Villa Lumbung</h4>
                                                
                                            </div>
                                        </div><!-- /.item -->
					                     <div class="item-owl">

                                            <p class="speech">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque id arcu neque, at convallis est felis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque id arcu neque, at convallis est felis.</p>
                                            <div class="client-info">
                                                <img src="gambar/33.png" alt=" " />

                                                <h4>Grand Mirage Resort</h4>
                                               
                                            </div>
                                        </div><!-- /.item -->
					                      <div class="item-owl">
										  <p class="speech">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque id arcu neque, at convallis est felis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque id arcu neque, at convallis est felis.</p>
                                            <div class="client-info">
                                                <img src="gambar/34.png" alt=" " />

                                                <h4>Bros</h4>
                                                
                                            </div>
                                        </div><!-- /.item -->
				              </div>
						<!--//screen-gallery-->
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>