rect_x = 250;
//globals
last_rectX=-1;
fps = 30;

paddle = {top:0 , left:140 , width:50, height:10};


rectanglesToHit = [];

circle = {x:100, y:50, radius:6 , sAngle:1, eAngle:3*Math.PI};

circleHeading={x:1,y:1.1};


//collision detection

/*
if circle.x + circle.radius >= canvas. width or circle.x + circle.radius <= 0
  theres a collision
  heading x

if circle.y >= canvas height - rectangle.height/0.6
  there's a collision
  so swsp the headings aka heading y
  
for loop on the rectangles to hit
check each one's y the same way as the paddle

check bottom y cuz then u lose
check top y just bounce

*/

  
window.onload = function(){
  
  var rect_y = 140;
  //x,y is top left corne of rect
  var rect_width = 50;
  var rect_height = 10;
  var paddleColor = "#FF0000";
  
  var canvas = document.getElementById("gameCanvas");
  
  //var ctx = canvas.getContext("2d");
  //ctx.beginPath();
  //ctx.fillStyle="#FFFFFF";
  //ctx.arc(108,100,5,0,2.5*Math.PI);
  //ctx.stroke();
  
  //ctx.fillStyle = paddleColor;
  

  //ctx.fillRect(rect_x,rect_y,rect_width,rect_height);
  
  var x_toRemove = rect_x;
  
	
	
	
	
  
  canvas.addEventListener("click", function(event) {
    movePaddle(event);
    
    //removeOldPaddle(x_toRemove,rect_y,rect_width_rect_height,ctx);

  });
  //canvas.onclick=function(event){textMouseStuff(event)};

	function createRectangles(){
	
		var ctx = canvas.getContext('2d');
		ctx.fillStyle="#000000";
		ctx.fillRect(10,10,50,10);
		
		var baseRect= {"x" : 10 , "y":10 , 'width':50, 'height':10 };
		rectanglesToHit.push(baseRect);
		console.log(canvas.width);
		
		var x = 20;
		for(var x = 61;  x < (canvas.width-50); x+=51){
		
			rectanglesToHit.push({'x':x,'y':10,'width':50,'height':10});
			console.log("x: " + x);
		}
		
		
		
	
	}
	createRectangles();
	console.log(rectanglesToHit.length);
	
  
  setInterval(function(){
    
    var canvas = document.getElementById("gameCanvas");
    var ctx = canvas.getContext("2d");
    
    
    ctx.fillStyle="#00000";
		ctx.clearRect(0,0,canvas.width,canvas.height - paddle.height);	
		//console.log(canvas.width);
    ctx.beginPath();
    ctx.arc(circle.x,circle.y,5,0,2.5*Math.PI);
    ctx.closePath();

    ctx.stroke();
		
		ctx.fillRect(paddle.right, paddle.left, paddle.width, paddle.height);
    for (rect in rectanglesToHit){
			ctx.fillStyle='#FF00FF';
			console.log(rectanglesToHit[rect]);
			ctx.fillRect(rectanglesToHit[rect].x,rectanglesToHit[rect].y,rectanglesToHit[rect].width,rectanglesToHit[rect].height);
			if((circle.x - circle.radius >= rectanglesToHit[rect].x) && (circle.x + circle.radius) <= rectanglesToHit[rect].x+rectanglesToHit[rect].width	 && (circle.y - circle.radius) <= rectanglesToHit[rect].y + rectanglesToHit[rect].height){
			
				rectanglesToHit.splice(rect,1);
				circleHeading.y = circleHeading.y * -1;
			
			}
		
		}
  
    if((circle.x - circle.radius) <= 0 ){
    
      circleHeading.x = circleHeading.x * -1;
      
    
    }
  
    if(circle.x + circle.radius >= 300){
    
      circleHeading.x = circleHeading.x * -1;
    
    
    }
  
    if(circle.y - circle.radius <= 0 ){
    
      circleHeading.y = circleHeading.y * -1;
  
    }
  
    if(circle.y + circle.radius >= canvas.height || ((circle.x + circle.radius) >= paddle.top && (circle.x  + circle.radius) < (paddle.top+paddle.width) ) && ((circle.y  + circle.radius ) >= 140  ) ){

      circleHeading.y = circleHeading.y * -1;
    
    
    }
  
    circle.x += circleHeading.x;
    circle.y+=circleHeading.y;
    //console.log(circle);
    
    
    ctx.beginPath();
    ctx.fillStyle="#FFFFFFF";
    ctx.arc(circle.x,circle.y,5,0,2.5*Math.PI);
    ctx.stroke();
    ctx.closePath();
  
  },fps);
  

  

};

function movePaddle(event){
  
  var rect_y = 140;
  //x,y is top left corne of rect
  var paddleWidth = 50;
  var paddleHeight = 10;
  
  
  //console.log(canvas);
  var canvas = document.getElementById("gameCanvas");
  var xOffset = canvas.offsetLeft;
  //console.log(xOffset);
  //var yOffset = canvas.offsetTop;
  context = canvas.getContext("2d");
  context.clearRect(last_rectX-1, paddle.left, paddle.width+1,paddle.height);
  
  context.fillStyle = "#FF0000";
  var mouseX = event.pageX - xOffset;
  console.log("event.pageX: " +event.pageX );
  console.log("mouseX: " +mouseX);
  console.log("paddleWidth: " + paddleWidth)

  function paddleX( mousex){
    
    var max_X = 500;
    var x = 0;
    
    if(mouseX <= (paddleWidth / 2) ){
      console.log("paddleWidth/2: " +paddleWidth/2);
      x=0;
      
    }
    
    else if(mouseX >= max_X){
      
      x=max_X;
      
    }
    
    else{
      
      x = (0.6 * mouseX) - (paddleWidth/2);
      console.log('common case x:' + x)
      
    }
    console.log(x)
    return x;
    
  }
  
  if(last_rectX > -1){
    
    //removeOldPaddle(last_rectX,rect_y,paddleWidth,paddleHeight);

  }
  
  
  context.fillRect(last_rectX=paddleX(mouseX),rect_y,paddleWidth,paddleHeight);
  paddle.top = last_rectX;
  console.log('last_rectX: ' + last_rectX);
  
  
  
}