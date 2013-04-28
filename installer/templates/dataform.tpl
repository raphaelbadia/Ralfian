<?php

if(isset($_GET['c']) && $_GET['c'] == 1) {
echo "<div class=\"headline\"><span class=\"f10 c5\">Error importing database. Check configuration.</span></div><br>";
}
?>
<form action="process.php" method="post" id="dataform">
<input type="hidden" name="substruc" value="1">

	<p>
	<span class="f10 c">Create SQL Database</span>
		<table>
			<tr><td>Warning: This can take some time. Click on "create" to install the server, when the page is 100% loaded click "next" !</td></tr>
			<tr><td><center>
			<?php
			include("../app/model/colbon.php");
			echo "<a href=\"../restart.php?";
			echo $AppConfig['system']['installkey'];
			echo "\" target=\"_blank\">Create !!</a>";
			?>
			<input type="submit" name="Submit" id="Submit" value="Next"></center></td></tr>
		</table>
	</p>
</form>
</div>