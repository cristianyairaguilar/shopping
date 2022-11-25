<?php
//session_start();

?>

<div class="top-bar animate-dropdown">
	<div class="container">
		<div class="header-top-inner">
			<div class="cnt-account">
				<ul class="list-unstyled">

					<?php if (strlen($_SESSION['login'])) {   ?>
						<li><a href="#"><i class="icon fa fa-user"></i>Bienvenido/a -<?php echo htmlentities($_SESSION['username']); ?></a></li>
					<?php } ?>

					<li><a href="my-account.php"><i class="icon fa fa-user"></i>Cuenta</a></li>
					<?php if (strlen($_SESSION['login']) == 0) {   ?><span class="key">Rastrear orden</span>
						<li><a href="login.php"><i class="icon fa fa-sign-in"></i>Login</a></li>
					<?php } else { ?>

						<li><a href="logout.php"><i class="icon fa fa-sign-out"></i>Salir</a></li>
					<?php } ?>
				</ul>
			</div><!-- /.cnt-account -->

		

			<div class="clearfix"></div>
		</div><!-- /.header-top-inner -->
	</div><!-- /.container -->
</div><!-- /.header-top -->