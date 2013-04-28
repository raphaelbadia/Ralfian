<?php
$AppConfig = array (
	'db' 					=> array (
		'host'				=> 'localhost',
		'user'				=> 'root',
		'password'			=> '',
		'database'			=> 'tnttravi_tnttra1',
	),
	'db2' 					=> array (
		'host'				=> 'localhost',
		'user'				=> 'root',
		'password'			=> '',
		'database'			=> 'tnttravi_tnttra1',
	),
	
		'Game' 			=> array (
		
		'mapx'	      	=> '101', //map size
	
		'speed'	      	=> '1000', // game speed
		
		'attack'        => '500', // troops speed
		
		'protection'	=> '24',	//beginner protection
		
		'protectionx'	=> '1',	// don't touch
		
		'X'	            => '1366420586', //the time in timestamp when the server start. Don't change
		
		'capacity'      => '5', // size warehouse & grnary
		
		'carry'         => '3', // the Payload of troops multiplier
	
		'cranny'        => '5', // cranny size
		
		'cp'            => '5', //culture point to found the first village (don't work)
		
		'market'        => '5', // merchant size
				
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
		
		'starthours'        => '01:12', // don't work
		'startdate'         => '04/20/2013',// don't work
		
		'medalstime'          =>'3600', // here it's the time in second of automatic medals
		
		'bonous'        => '5',
		'gregister'        => '5', // gold player have when register
		'percent'        => '0', //it's a fee when somebody use the bank, players dont like so it will stay at 0
								 # so why did i added this if we don't use?
		'plusclub'        => '5', // the cost of club gold
		'invitgold'        => '5', // gold player win when invite a friend
		'invitpeople'        => '300', // pop need to win gold
		
		
		
		
	
	),
	
	'page' 		=> array (
		'ar_title'			=> 'Ralfian',
		'en_title'			=> 'Ralfian',
		'meta-tag' 			=> '',
		'asset_version'		=> 'c4b7aaaadef'						// this is used to flush any old assets like css file or javascript
	),
	'system' 	=> array (
		'lang'				=> 'en',	//maybe one day why not translate in other languages?
		'forum_url'			=> '', // forum closed since bot spammed it. Useless
		'social_url'		=> '#', // no
		'adminName'             => 'Multihunter', #name.
		'adminPassword'         => 'dododo', 		#password.
		'admin_email'		=> 'soki@odo.com',	#official admin email.
		'email' 			=> 'soki@odo.com',#offcial support password (tickets,activation).
		'installkey' 		=> '1005843374', // AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
		'calltatar' 		=> '474961260',
		'allow_update'		=> 1  // 1 = yes, 0 = no !
	),
	'plus'			=> array (
		'mobile' 	=> array (
				'name'		=> 'Mobile Pack',
				'gold'		=> '350',
				'cost'		=> '2.00', // the paygol cost. Changing this do nothing its onyl for display
				'currency'	=> 'eur', // display only
				'pg_name'	=> 'travial', // paygol name
				'pg_pass'	=> '123STFU96', //paygol pass (never share it even to your best friends a password is private ! ok
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
				'merchant_id'	=> 'paypal@travial.eu',// paypal email
				'merchent_pass'	=> '123STFU96', //paypal password
				'currency'		=> 'USD'
			)
			
		)
	)
);