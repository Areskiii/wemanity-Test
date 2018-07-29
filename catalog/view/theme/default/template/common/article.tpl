<?php echo $header; ?>
	<div class="container">
      <h1 style="text-align: center;">Wemanity - Article</h1>
      <div class="row">
			
			
				<div class="col-md-12">
					<div class="card">
							<div class="col-md-10" >
								<h1><?php echo $data['title']; ?></h1>
								<article><p><?php echo $data['text']; ?></p></article>
							</div> 
					</div>
				</div>	
				<div class="panel panel-default">			  
				  <div class="panel-body">
					<div class="row">
						<div class="col-sm-8 text-left"><?php echo $pagination; ?></div>
						<div class="col-sm-4 text-right"><?php echo $results; ?></div>
					</div>
				  </div>
				</div>
       </div>
	</div>


	
<?php echo $footer; ?>