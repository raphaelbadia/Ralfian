<?php

if(file_exists("include/constant.php")) {
  include ("include/database.php");
}
class Process {

	function Process() {
		if(isset($_POST['subconst'])) {
			$this->constForm();
		} else
			if(isset($_POST['substruc'])) {
				$this->createStruc();
			} else
				if(isset($_POST['subwdata'])) {
					$this->createWdata();
				} else
					if(isset($_POST['subacc'])) {
						$this->createAcc();
						} else {
							header("Location: index.php");
						}
	}

	function constForm() {
		$myFile = "../app/model/colbon.php";
		$fh = fopen($myFile, 'w');
		$text = file_get_contents("data/constant_format.tpl");
		if(isset($_POST['pg_name']))
		{
			$text = preg_replace("'%PGNAME%'", $_POST['pg_name'], $text);
		}
		if(isset($_POST['pg_pass']))
		{
			$text = preg_replace("'%PGPASS%'", $_POST['pg_pass'], $text);
		}
		if(isset($_POST['pp_name']))
		{
			$text = preg_replace("'%PPNAME%'", $_POST['pp_name'], $text);
		}
		if(isset($_POST['pp_pass']))
		{
			$text = preg_replace("'%PPPASS%'", $_POST['pp_pass'], $text);
		}
		if(isset($_POST['pg_script']))
		{
			// $pg_file = "../pg_script.php";
			// $file_open = fopen($pg_file, "w");
			// fwrite ($pg_file, $_POST['pg_script']);
			// fclose($pg_file);
			$text = preg_replace("'%PGUID%'", $_POST['pg_script'], $text);
			
		}
		$SomeStrangeNumber = rand(intval(uniqid()),time());
		$SomeStrangeNumber += 519;
		// It's a random number
		$to_finish = "pg_".$SomeStrangeNumber."gver.php";
		$pg_giver = "../".$to_finish;
		rename("../ok.php",$to_finish);
		$text = preg_replace("'%PGGIVER%'", $to_finish, $text);
		$text = preg_replace("'%FORUM%'", $_POST['server_url'], $text);
		$text = preg_replace("'%SERVURL%'", $_POST['server_url'], $text);
		$text = preg_replace("'%SERVERNAME%'", $_POST['servername'], $text);
		$text = preg_replace("'%SSTARTDATE%'", $_POST['start_date'], $text);
		$text = preg_replace("'%SSTARTTIME%'", $_POST['start_time'], $text);
		$now = time();
		$text = preg_replace("'%STIMEX%'", $now, $text);
		$text = preg_replace("'%LANG%'", $_POST['lang'], $text);
		$text = preg_replace("'%SPEED%'", $_POST['speed'], $text);
		$text = preg_replace("'%INCSPEED%'", $_POST['incspeed'], $text);
		$text = preg_replace("'%TCAPACITY%'", $_POST['tcapacity'], $text);
		$text = preg_replace("'%SMEDALSX%'", $_POST['medalsX'], $text);
		$text = preg_replace("'%GREG%'", $_POST['GREG'], $text);
		$text = preg_replace("'%GWMED%'", $_POST['GWMED'], $text);
		$text = preg_replace("'%GCLUB%'", $_POST['GCLUB'], $text);
		$text = preg_replace("'%GINVIT%'", $_POST['GINVIT'], $text);
		$INSTALLKEY = rand(intval(uniqid()),time());
		$CALLTATAR = rand(5,time());
		$text = preg_replace("'%INSTALLKEY%'", $INSTALLKEY, $text);
		$text = preg_replace("'%CALLTATAR%'", $CALLTATAR, $text);
		$text = preg_replace("'%ALLOWUPDATE%'", $_POST['ALLOWUPDATE'], $text);
		$text = preg_replace("'%CRANNYSIZE%'", $_POST['crannysize'], $text);
		$text = preg_replace("'%SCP%'", $_POST['cpoints'], $text);
		$text = preg_replace("'%TRADERCAP%'", $_POST['tradercap'], $text);
		$text = preg_replace("'%STORAGE_MULTIPLIER%'", $_POST['storage_multiplier'], $text);
		$text = preg_replace("'%MAX%'", $_POST['wmax'], $text);
		$text = preg_replace("'%SSERVER%'", $_POST['sserver'], $text);
		$text = preg_replace("'%SUSER%'", $_POST['suser'], $text);
		$text = preg_replace("'%SPASS%'", $_POST['spass'], $text);
		$text = preg_replace("'%SDB%'", $_POST['sdb'], $text);
		$text = preg_replace("'%AEMAIL%'", $_POST['aemail'], $text);
		$text = preg_replace("'%ANAME%'", $_POST['aname'], $text);
		$text = preg_replace("'%BEGINNER%'", $_POST['beginner'], $text);

		fwrite($fh, $text);

		if(file_exists("../app/model/colbon.php")) {
			header("Location: index.php?s=2");
		} else {
			header("Location: index.php?s=1&c=1");
		}

		fclose($fh);
	}

	function createStruc() {
		require("../app/model/colbon.php");
		$db_connect = mysql_connect($AppConfig['db']['host'],$AppConfig['db']['user'],$AppConfig['db']['password']);
		mysql_select_db($AppConfig['db']['database'], $db_connect);
		$query = mysql_query("SELECT * FROM `g_settings`");
		if($query)
		{
			header("Location: index.php?s=3");
		} 
		else 
		{
			header("Location: index.php?s=2&c=1");
		}
	}

	function createWdata() {
		header("Location: index.php?s=4");
	}

}
;

$process = new Process;

?>
