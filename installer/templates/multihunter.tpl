<?php
//////////////////////////////////////////////////////////////////////////////////////////////////////
//                                             TRAVIANX                                             //
//            Only for advanced users, do not edit if you dont know what are you doing!             //
//                                Made by: Dzoki & Dixie (TravianX)                                 //
//                              - TravianX = Travian Clone Project -                                //
//                                 DO NOT REMOVE COPYRIGHT NOTICE!                                  //
//////////////////////////////////////////////////////////////////////////////////////////////////////
	if(file_exists("include/constant.php"))
	{
	rename("include/constant.php","../app/model/colbon.php");
	}
?>



<form action="include/multihunter.php" method="post" id="dataform">

<p>
	<span class="f10 c">Your Multihunter infos</span>
		<table>
			<tr><td>Name:</td><td><input type="text" name="mhpw" id="mhpw" value="<?php require("../app/model/colbon.php"); echo $AppConfig['system']['adminName']; ?>" disabled="disabled"></td></tr>
			<tr><td>Password:</td><td><input type="text" name="mhpw" id="mhpw" value="<?php echo $AppConfig['system']['adminPassword']; ?>" disabled="disabled"></td></tr>
			<tr><td>Rembember these informations!</td><td></td></tr>
		</table>
</p>

	<center>
	<input type="submit" name="Submit" id="Submit" value="continue"></center>
</form>

</div>