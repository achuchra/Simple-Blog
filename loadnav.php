<?php

	class Nav {
		
		protected $main_site;
		protected $log_in;
		
		public function __construct($main_site, $log_in){
			$this->main_site=$main_site;
			$this->log_in=$log_in;
		}
		
		public function getNav(){
			return "<ul class=\"navi\"><li><a href=\"index.php\">$this->main_site</a></li>
									   <li><a href=#>$this->log_in</a></li>";
		}
	}
	
	class AdminNav {
		
		protected $main_site;
		protected $add_story;
		protected $delele_story;
		protected $log_out;
		
		public function __construct($main_site, $add_story, $delete_story, $log_out){
			$this->main_site=$main_site;
			$this->add_story=$add_story;
			$this->delete_story=$delete_story;
			$this->log_out=$log_out;
		}
		
		public function getAdminNav(){
			return "<ul class=\"navi\"><li><a href=\"index.php\">$this->main_site</a></li>
									   <li><a href=\"#\">$this->add_story</a></li>
									   <li><a href=\"#\">$this->delete_story</a></li>
									   <li><a href=\"index.php\">$this->log_out</a></li>";
		}
		
	}