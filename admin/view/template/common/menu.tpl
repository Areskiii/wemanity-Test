			<ul class="nav" id="menu">
                <li id="dashboard">
                    <a href="<?php echo $home; ?>">
                        <i class="fa fa-laptop"></i>
                        <p><?php echo $text_dashboard; ?></p>
                    </a>
                </li>
				<li id="articles">
					<a href="<?php echo $article; ?>">
                        <i class="fa fa-bookmark"></i>
                        <p><?php echo $text_article; ?></p>
                    </a>
				</li>
				<li id="users" style="border-top: 1px solid rgba(255, 255, 255, 0.2);">
                    <a data-toggle="collapse" href="#user">
                        <i class="pe-7s-id"></i>
                        <p><?php echo $text_users; ?>
                           <b class="caret"></b>
                        </p>
                    </a>
                    <div class="collapse" id="user">
                        <ul class="nav">
                            <li><a href="<?php echo $user; ?>"><?php echo $text_user; ?></a></li>
                            <li><a href="<?php echo $user_group; ?>"><?php echo $text_user_group; ?></a></li>
                        </ul>
                    </div>
                </li>
				<li id="logs">
                    <a data-toggle="collapse" href="#log">
                        <i class="pe-7s-note2"></i>
                        <p><?php echo $text_logs_platforme; ?>
                           <b class="caret"></b>
                        </p>
                    </a>
                    <div class="collapse" id="log">
                        <ul class="nav">
                            <li><a href="<?php echo $admin_log; ?>"><?php echo $text_admin_log; ?></a></li>
                            <li><a href="<?php echo $system_log; ?>"><?php echo $text_system_log; ?></a></li>
                        </ul>
                    </div>
                </li>
            </ul>