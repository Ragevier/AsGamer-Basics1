package com.asgamer.basics1
{
	import com.senocular.utils.KeyObject;
	
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.ui.Keyboard;
	
	public class Ship extends MovieClip
	{
		private var stageRef:Stage;
		private var key:KeyObject;
		private var speed:Number = 0.5;
		private var xv:Number = 0;
		private var yv:Number = 0;
		private var friction:Number = 0.93;
		
		public function Ship(stageRef:Stage)
		{
			this.stageRef = stageRef;1
			key = new KeyObject(stageRef);

			addEventListener(Event.ENTER_FRAME, loop , false ,0 , true);
		}
		public function loop(e:Event):void
		{
		if (key.isDown(Keyboard.LEFT))
			{
				xv -= speed;
			}else if(key.isDown(Keyboard.RIGHT)) {
				xv += speed;
 			}else if(key.isDown(Keyboard.UP)){
				yv -= speed;
			}else if(key.isDown(Keyboard.DOWN)){
				yv += speed;			
			}

		x += xv;
		y += yv;
		rotation = xv
		
		}
		
		
}
}