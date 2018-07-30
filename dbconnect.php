<?php

	class DbConnect {
		
		private $host;
		private $user;
		private $password;
		private $database;
		
		
		public function connect(){
			
			$this->host= 'localhost';
			$this->user = 'root';
			$this->password = '';
			$this->database = 'blog';
				
			$db = new PDO("mysql:host=$this->host;dbname=$this->database;charset=utf8", 
			$this->user, 
			$this->password);
			
			return $db;
		}
	}
			
