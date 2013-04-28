<?php

if(isset($_GET['c']) && $_GET['c'] == 1) {
echo "<div class=\"headline\"><span class=\"f10 c5\">Error creating constant.php check cmod.</span></div><br>";
}
?>
<form action="process.php" method="post" id="dataform">

	<p>
	<span class="f10 c">SERVER RELATED</span>
	<table><tr>
	<td><span class="f9 c6">Server name:</span></td><td width="140"><input type="text" name="servername" id="servername" value="Ralfian"></td></tr><tr>
	<td><span class="f9 c6">Server Url:</span></td><td width="140"><input type="text" name="server_url" id="server_url" value="<?php $CurrentUrl = "http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']; $bing = explode("/", $CurrentUrl); echo $bing[0]."//".$bing[1].$bing[2]."/".$bing[3]; ?>"></td></tr><tr>
	<td><span class="f9 c6">Server speed:</span></td><td><input name="speed" type="text" id="speed" value="1" size="2"></td></tr><tr>
	<td><span class="f9 c6">Troop speed:</span></td><td width="140"><input type="text" name="incspeed" id="incspeed" value="1" size="2"></td></tr><tr>
	<td><span class="f9 c6">Troop capacity (robbers):</span></td><td width="140"><input type="text" name="tcapacity" id="incspeed" value="1" size="2"></td></tr><tr>
	<td><span class="f9 c6">Cranny size:</span></td><td><input name="crannysize" type="text" id="evasionspeed" value="1" size="2"></td></tr><tr>
	<td><span class="f9 c6">Culture points needed:</span></td><td><input name="cpoints" type="text" id="cpoints" value="1" size="2"></td></tr><tr>
	<td><span class="f9 c6">Trader capacity (1 = 1x...):</span></td><td width="140"><input type="text" name="tradercap" id="tradercap" value="1" size="2"></td></tr><tr>
	<td><span class="f9 c6">World size:</span></td><td>
				<select name="wmax">
				<option value="21">10x10</option>
				<option value="51">25x25</option>
				<option value="101">50x50</option>
				<option value="201" selected="selected">100x100</option>
				<option value="401">200x200</option>
				<option value="601">300x300</option>
				<option value="801">400x400</option>
				</select>
		</td></tr><tr></tr>
	<td><span class="f9 c6">Language:</span></td><td>
				<select name="lang">
				<option value="en" selected="selected">English</option>
				</select>
		</td></tr><tr></tr>
	<td><span class="f9 c6">Beginners protection length (in hours):</span></td><td>
				<input name="beginner" value="24"/>
		</td></tr><tr></tr>
	<td><span class="f9 c6">Storage Multipler:</span></td><td width="140"><input type="text" name="storage_multiplier" id="storage_multiplier" value="1"></td></tr><tr>
	<td><span class="f9 c6">Automatics medals each (seconds):</span></td><td width="140"><input type="text" name="medalsX" id="storage_multiplier" value="1"></td></tr><tr>
	<td><span class="f9 c6">Golds when a player register :</span></td><td width="140"><input type="text" name="GREG" id="storage_multiplier" value="1"></td></tr><tr>
	<td><span class="f9 c6">Golds when a player win a medal :</span></td><td width="140"><input type="text" name="GWMED" id="storage_multiplier" value="1"></td></tr><tr>
	<td><span class="f9 c6">Gold club cost :</span></td><td width="140"><input type="text" name="GCLUB" id="storage_multiplier" value="1"></td></tr><tr>
	<td><span class="f9 c6">Golds when a player invite friends :</span></td><td width="140"><input type="text" name="GINVIT" id="storage_multiplier" value="1"></td></tr><tr>
	<td><span class="f9 c6">Allow automatic update to keep your script safe:</span></td><td><select name="ALLOWUPDATE">
	  <option value="1" selected="selected">Yes</option>
	  <option value="0">No</option>
	</select></td></table>
	</p>

		<p>
	<span class="f10 c">ADMIN ACCOUNT</span>
	<table>
	<tr><td><span class="f9 c6">Admin name:</span></td><td><input type="text" name="aname" id="aname" value=""></td></tr>
	<tr><td><span class="f9 c6">Admin email:</span></td><td><input type="text" name="aemail" id="aemail" value=""></td></tr>
</tr><tr></tr>
	</table>
	</p>

	<p>
	<span class="f10 c">SQL RELATED</span>
	<table><tr>
	<td><span class="f9 c6">Hostname:</span></td><td><input name="sserver" type="text" id="sserver" value="localhost"></td></tr><tr>
	<td><span class="f9 c6">Username:</span></td><td><input name="suser" type="text" id="suser" value=""></td></tr><tr>
	<td><span class="f9 c6">Password:</span></td><td><input type="text" name="spass" id="spass"></td></tr><tr>
	<td><span class="f9 c6">DB name:</span></td><td><input type="text" name="sdb" id="sdb"></td></tr><tr>
	<td><span class="f9 c6">Type:</span></td><td><select name="connectt">
	  <option value="0" selected="selected">MYSQL</option>
	</select></td></tr>
	</table>
	</p>

<br />
	<span class="f10 c">Server Start Settings</span>
	<table>
	<tr><td><span class="f9 c6">Start Date:</span></td><td width="140"><input type="text" name="start_date" id="start_date" value="<?php echo date('m/d/Y'); ?>"></td></tr>
	<tr><td><span class="f9 c6">Start Time:</span></td><td width="140"><input type="text" name="start_time" id="start_time" value="<?php echo date('H:i'); ?>"></td></tr>
	</table>
	<span class="f10 c">Advanced options</span>
	<table>
	<tr><td><span class="f9 c6">Paygol name(if you want it automated):</span></td><td width="140"><input type="text" name="pg_name" id="start_date" value=""></td></tr>
	<tr><td><span class="f9 c6">Paygol password (if you want it automated):</span></td><td width="140"><input type="text" name="pg_pass" id="start_date" value=""></td></tr>
	<tr><td><span class="f9 c6">Paygol id :</span></td><td width="140"><input type="text" name="pg_script" id="start_date" value=""></td></tr>
	<tr><td><span class="f9 c6">Paypal email (Disabled):</span></td><td width="140"><input type="text" name="pp_name" value=""></td></tr>
	<tr><td><span class="f9 c6">Paypal password (disabled):</span></td><td width="140"><input type="text" name="pp_pass" value=""></td></tr>
	</table>
	<!--<span class="f10 c">Paygol script</span>
	<table>
	<tr>
	<td><textarea rows="6" cols="68" name="pg_script" id="start_date"></textarea></td>
	</tr>
	</table>-->
	<center>
	<input type="submit" name="Submit" id="Submit" value="Submit">
	<input type="hidden" name="subconst" value="1"></center>
	</form>

</div>