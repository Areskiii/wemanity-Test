<?php echo $header; ?>
<style>
.group-result:hover{background:#f9f8f8}
</style>
	<!-- results search -->
	<div class="container" style="margin-top:10px;">
		<div class="row">
			<div class="col-sm-12 col-lg-12">
				<a class="btn btn-success" href="<?php echo $back_to; ?>">Back to search list</a>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-lg-12">
				<h3><?php echo $title; ?></h3>
				<p style="font-size:12px;color:#8e8e8e;"><?php echo 'Source: <b>'. $type_doc .'</b>  |  <i>REG_NUM</i>: '. $id; ?></p>
				<p><?php echo $content; ?></p>
				<hr/>
				
			</div>
		</div>
	</div>
	<?php if(isset($results_search)){ ?>
	<div class="container">
		<div class="row" style="margin-bottom: 10px;">
			<div class="col-sm-12 col-lg-12" style="background: #2ecc71;">
				<h4 style="color:#fff"><?php echo $total_query_search.' Similar Articles '; ?> (<?php echo $total_time_search; ?> secondes) </h4>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12 col-lg-12">
				<?php foreach($results_search as $r){ ?>
					<?php if(($r['id'] == $id) && ($r['TableIndex'] === $type_doc_table)){; ?>
					<?php }else{ ?>
					<div class="group-result">
						<div>
							<div class="rc container-search">
								<!-- TITLE RESULTS -->
								<h3 class="title-txt">
									<a href="<?php echo $r['url_similar']; ?>" style="color: #25bb65;">									
										<?php echo $r['TITLE']; ?>
									</a>
								</h3>
								<p style="font-size:12px;color:#8e8e8e;"><?php echo 'Source: <b>'. $r['Search_Range_name'] .'</b>  |  <i>Score</i>: '. $r['score'] .' | <i>REG_NUM</i>: '. $r['id']; ?></p>
								<!-- TITLE RESULTS -->
								<div class="content-txt">
									<?php echo $r['CONTENT']; ?>									
								</div>
							</div>
						</div>
					</div>
					<hr/>
					<?php }	?>
				<?php }	?>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12 col-lg-12">
				<?php echo $pagination; ?>
			</div>
			<div class="col-sm-12 col-lg-12">
				<?php echo $results; ?>
			</div>
		</div>
    </div>
	<?php }else{ ?>
	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-lg-12">
				<p style="color:#808080">No results for this search: <b><?php echo $search_term;?></b> (<?php echo $total_time_search; ?> secondes) </p>
			</div>
		</div>
	</div>
	<?php } ?>
	
<?php echo $footer; ?>