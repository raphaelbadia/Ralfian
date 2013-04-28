<?php
$AppConfig = array (
	'db' 					=> array (
		'host'				=> '%SSERVER%',
		'user'				=> '%SUSER%',
		'password'			=> '%SPASS%',
		'database'			=> '%SDB%',
	),
	'db2' 					=> array (
		'host'				=> '%SSERVER%',
		'user'				=> '%SUSER%',
		'password'			=> '%SPASS%',
		'database'			=> '%SDB%',
	),
	
		'Game' 			=> array (
		
		'mapx'	      	=> '%MAX%', //map size
	
		'speed'	      	=> '%SPEED%', // game speed
		
		'attack'        => '%INCSPEED%', // troops speed
		
		'protection'	=> '%BEGINNER%',	//beginner protection
		
		'protectionx'	=> '1',	// don't touch
		
		'X'	            => '%STIMEX%', //the time in timestamp when the server start. Don't change
		
		'capacity'      => '%STORAGE_MULTIPLIER%', // size warehouse & grnary
		
		'carry'         => '%TCAPACITY%', // the Payload of troops multiplier
	
		'cranny'        => '%CRANNYSIZE%', // cranny size
		
		'cp'            => '%SCP%', //culture point to found the first village (don't work)
		
		'market'        => '%TRADERCAP%', // merchant size
				
		'plus1'          => '1', //don't change
		'plus2'          => '1',//don't change
		'plus3'          => '10',//don't change
		'plus4'          => '5',//don't change
		'plus5'          => '2',//don't change
		'plus6'          => '3',//don't change
		'plus7'          => '15',//don't change
		'piyadeh'        => '0.05',//don't change
		'savareh'        => '0.1',	//don't change
		'shovalieh'      => '0.2',//don't change
		
		'starthours'        => '%SSTARTTIME%', // don't work
		'startdate'         => '%SSTARTDATE%',// don't work
		
		'medalstime'          =>'%SMEDALSX%', // here it's the time in second of automatic medals
		
		'bonous'        => '%GWMED%',
		'gregister'        => '%GREG%', // gold player have when register
		'percent'        => '0', //it's a fee when somebody use the bank, players dont like so it will stay at 0
		'plusclub'        => '%GCLUB%', // the cost of club gold
		'invitgold'        => '%GINVIT%', // gold player win when invite a friend
		'invitpeople'        => '300', // pop need to win gold
		
		
		
		
	
	),
	
	'page' 		=> array (
		'ar_title'			=> '%SERVERNAME%',
		'en_title'			=> '%SERVERNAME%',
		'meta-tag' 			=> '',
		'asset_version'		=> 'c4b7aaaadef'						// this is used to flush any old assets like css file or javascript
	),
	'system' 	=> array (
		'lang'				=> '%LANG%',	//maybe one day why not translate in other languages?
		'forum_url'			=> '%FORUM%', // forum closed since bot spammed it. Useless
		'social_url'		=> '#', // no
		'server_url'			=> '%SERVURL%',
		'adminName'             => '%ANAME%', #name.
		'adminPassword'         => 'dododo', 		#password.
		'admin_email'		=> '%AEMAIL%',	#official admin email.
		'email' 			=> '%AEMAIL%',#offcial support password (tickets,activation).
		'installkey' 		=> '%INSTALLKEY%', // AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
		'calltatar' 		=> '%CALLTATAR%',
		'allow_update'		=> %ALLOWUPDATE%  // 1 = yes, 0 = no !
	),
	'plus'			=> array (
		'mobile' 	=> array (
				'name'		=> 'Mobile Pack',
				'id'		=> '%PGUID%',
				'giver'		=> '%PGGIVER%',
				'gold'		=> '350',
				'cost'		=> '2.00', // the paygol cost. Changing this do nothing its onyl for display
				'currency'	=> 'eur', // display only
				'pg_name'	=> '%PGNAME%', // paygol name
				'pg_pass'	=> '%PGPASS%', //paygol pass (never share it even to your best friends a password is private ! 
		),
		'packages'	=> array (
			array ( 
				'name'		=> 'Package A',
				'gold'		=> 30,
				'cost'		=> 1.49,
				'currency'	=> 'usd',
				'image'		=> 'package_a.jpg'
			),
			array ( 
				'name'		=> 'Package B',
				'gold'		=> 100,
				'cost'		=> 3.99,
				'currency'	=> 'usd',
				'image'		=> 'package_b.jpg'
			),
			array ( 
				'name'		=> 'Package C',
				'gold'		=> 250,
				'cost'		=> 7.99,
				'currency'	=> 'usd',
				'image'		=> 'package_c.jpg'
			),
			array ( 
				'name'		=> 'Package D',
				'gold'		=> 600,
				'cost'		=> 10.55,
				'currency'	=> 'usd',
				'image'		=> 'package_d.jpg'
			),
		),
		'payments' => array (
		'paypal'	=> array (
				'testMode'		=> false,
				'name'			=> 'PayPal',
				'image'			=> 'paypal_solution_graphic-US.gif',
				'merchant_id'	=> '%PPNAME%',// paypal email
				'merchent_pass'	=> '%PPPASS%', //paypal password
				'currency'		=> 'USD'
			)
			
		)
	)
);