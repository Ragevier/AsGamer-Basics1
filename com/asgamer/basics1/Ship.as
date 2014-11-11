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
		private var maxSpeed:Number = 2;
		
		public function Ship(stageRef:Stage)
		{
			this.stageRef = stageRef;1
			key = new KeyObject(stageRef);

			addEventListener(Event.ENTER_FRAME, loop , false , 0 , true);
		}
		public function loop(e:Event):void
		{
		if (key.isDown(Keyboard.LEFT))
			{
				xv -= speed;
			}else if(key.isDown(Keyboard.RIGHT)) {
				xv += speed;
 			}else{
				xv *= friction
			}
			if(key.isDown(Keyboard.UP)){
				yv -= speed;
			}else if(key.isDown(Keyboard.DOWN)){
				yv += speed;			
			}else{ yv *= friction}

		x += xv;
		y += yv;
		rotation = xv
		 
			if(xv > maxSpeed){
				xv = maxSpeed
			}else if(xv < maxSpeed){
				xv = -maxSpeed
			}
			if(yv > maxSpeed){
				yv = maxSpeed
			}else if(yv < maxSpeed){
				yv = maxSpeed
			}
			scaleX = (maxSpeed - Math.abs(xv)/maxSpeed*4 + 0.75)
		
		}
	}
}