<!DOCTYPE HTML>
<html lang="pl">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<title>Gdziebądź - mini blog podróżniczy</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<link href="https://fonts.googleapis.com/css?family=Lobster|Raleway" rel="stylesheet">
</head>
<body><div class="ctl">
		<header>
			<?php include 'loadheader.php';
					$head = new Head('Blog podróżniczy', 'Witam cię!');
					echo $head->getHeader();
			?>
		</header>
		<nav>
			<?php include 'loadnav.php';
					$nav = new Nav('Strona główna', 'Zaloguj się');
					echo $nav->getNav();
			?>
		</nav>
		<article>
			<form method="post" action="" class="filtr">
				<select class="wybor" name="choose">
					<option value="1" selected>Wszystkie</option>
					<option value="2">Polska</option>
					<option value="3">Europa</option>
					<option value="4">Azja</option>
				</select>
				<input type="submit" value="Filtruj">
			</form>
			<table class="wpisy">
				<?php 
					include 'dbconnect.php';
					include 'dball.php';
					if(isset($_POST['choose'])){
						if($_POST['choose']=='1'){
							$show = new All();
							$show->getAll();
							$show->showAll();
							
						} else if ($_POST['choose']=='2'){
							$show = new Polska();
							$show->getPolska();
							$show->showPolska();
							
						} else if ($_POST['choose']=='3'){
							$show = new Europa();
							$show->getEuropa();
							$show->showEuropa();
							
						} else if ($_POST['choose']=='4'){
							$show = new Azja();
							$show->getAzja();
							$show->showAzja();	}
						else {
							$show = new All();
							$show->getAll();
							$show->showAll();
						}
					}
					else {
						$show = new All();
						$show->getAll();
						$show->showAll();
					}
				?>
				</table>
		</article></div>
		<footer>
			<?php
					$foot = new Head('autor', 'Andrzej Chuchra');
					echo $foot->getFooter();
			?>
		</footer>
		</body>
</html>