<?php echo $header; ?><?php /*echo $column_left;*/ ?>
<div class="content">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12 col-sm-12">
				<h4 class="title"><?php echo $text_statistics; ?></h4>
			</div>
		</div>
		<div class="row">
		
			<div class="col-lg-3 col-sm-6">
				<div class="card">
					<div class="content">
						<div class="row">
							<div class="col-xs-5">
								<div class="icon-big icon-info text-center">
									<i class="pe-7s-users" style="font-weight: bold;font-size: 77px;"></i>
								</div>
							</div>
							<div class="col-xs-7">
								<div class="numbers">
									<p style="font-size:13px"><?php echo $text_users; ?></p>
									<?php echo $num_users; ?>
								</div>
							</div>
						</div>
						<div class="footer">
							<hr>
						</div>
					</div>
				</div>
			</div>
			
			
			<div class="col-lg-3 col-sm-6">
				<div class="card">
					<div class="content">
						<div class="row">
							<div class="col-xs-5">
								<div class="icon-big icon-info text-center">
									<i class="pe-7s-bookmarks" style="font-weight: bold;font-size: 77px;"></i>
								</div>
							</div>
							<div class="col-xs-7">
								<div class="numbers">
									<p style="font-size:13px"><?php echo $text_article; ?></p>
									<?php echo $num_articles; ?>
								</div>
							</div>
						</div>
						<div class="footer">
							<hr>
						</div>
					</div>
				</div>
			</div>
		
		</div>					

	</div>
</div> 	
<?php echo $footer; ?>