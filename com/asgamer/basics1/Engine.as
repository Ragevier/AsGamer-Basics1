package com.asgamer.basics1
{
	import flash.display.MovieClip;
	import flash.display.Stage;
	
		public class Engine extends MovieClip
	{
		
		
		public function Engine()
		{	
			
			var ourShip:Ship = new Ship(stage);
			
			stage.addChild(ourShip);
		
		ourShip.x = stage.stageWidth / 2;
		ourShip.y = stage.stageHeight / 2;
		
		}
	}
}