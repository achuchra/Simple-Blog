<?php

	class Head {
		
		protected $tresc;
		protected $strona;
		
		public function __construct($tresc, $strona){
			$this->tresc=($tresc);
			$this->strona=($strona);
		}
		
		public function getHeader(){
			return "<div class=\"header_tresc\">$this->tresc</div><div class=\"header_strona\">$this->strona</div>";
		}
		
		public function getFooter(){
			return "<div class=\"footer_tresc\">$this->tresc</div><div class=\"footer_strona\">$this->strona</div>";
		}
		
	}
?>
