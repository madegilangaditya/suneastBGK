
 <style>
        /* CSS Reset */
        * {
            margin : 0;
            padding : 0;
            font-family : Arial, sans-serif;
            font-size: 12px;
        }
        
        h1,h2,h3,h4,h5,h6 {
            font-weight : normal;
        }
        
        /* Sidebar */
        #sidebar {
            width:260px;
            padding: 10px;
            margin: 10px 0px 20px 50px;
            color: #424242;
            background-color :#e8e8e8;
			position:relative;
        }
        
        /* Widget */    
        .widget {
            width : 100%;
            padding : 0px;
            margin-bottom : 20px;
            -webkit-border-radius: 2px;
            -moz-border-radius: 2px;
               border-radius: 2px;
            -webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
            -moz-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
			position:relative;
			float:left;
        }
        
        .widget-title {
            color: #fff;
            background:url("images/sidebarh2bg.gif") repeat-x #016696;
            padding: 0px 20px;
            height : 30px;
            line-height : 30px;
            display : block;
            border : none;
        }
            
        .widget-title h3 {
            font-family: Arial;
            font-weight : bold;
            font-size: 12px;
            letter-spacing : 0.5px;
            text-transform : Uppercase;
        }
        .widget ul {
            list-style: none;
            background: #fff;
            padding: 5px 0 5px 0;
            border: none;
        }
        .widget li {
            border-bottom: 1px dotted #d9d9d9;
            padding: 8px 15px;
            color: #666;
        }
        
        .widget li:last-child {
            border-bottom: none;
        }
        
        /* Link Widget */
        .widget li a {
            color: #444;
            text-decoration : none;
        }
        
        .widget li a:hover {
            font-weight : bold;
            color : #ff6c00;
        }
    </style>

<body>
<!--start-home-->

<div class="main-header" id="house">
			
	<div class="top_banner two">
			<div class="container">
			
			       <div class="sub-hd-inner">
						<h3 class="tittle">Bakery<span>Equipment</span></h3>
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
					$result1 = mysql_query("SELECT * FROM tb_produk where id_kategori=3");
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