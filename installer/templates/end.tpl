<?php
//////////////////////////////////////////////////////////////////////////////////////////////////////
//                                             TRAVIANX                                             //
//            Only for advanced users, do not edit if you dont know what are you doing!             //
//                                Made by: Dzoki & Dixie (TravianX)                                 //
//                              - TravianX = Travian Clone Project -                                //
//                                 DO NOT REMOVE COPYRIGHT NOTICE!                                  //
//////////////////////////////////////////////////////////////////////////////////////////////////////
?>
<p>
Thanks for installing Ralfian.
<h4>The installation folder has been renamed.</h4>
You can now start playing on your own Travian.
</p>

<?php include("../app/model/colbon.php"); ?>
<p>
<center><font size="4"><a href="<?php echo $AppConfig['system']['server_url']; ?>">> My Ralfian homepage <</font></a></center>
</p>
</div>
<?php
$now=time();
rename("../installer", "../installed".$now."at");