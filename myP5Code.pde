//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 
}

//🎯Variable Declarations Go Here

var ball = 40;
var rightX = 100;
var leftX = 150;
var rectsize = 30;

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);


 // right ball
 fill(50, 137, 168);
  ellipse(rightX-62, 300, ball, ball);
  

  // left ball
 fill(50, 137, 168);
  ellipse(leftX+400, 300, ball, ball);

  //random stuffy
  rect(20,20,rectsize,rectsize);
  fill(50, 137, 168);
  noStroke(0);
  arc(300,300,250,50, radians(0),radians(360));
  

  rightX +=3;
  leftX  -=3;

  rectsize = random(10,90);



  //Show x y values when mousepressed
  if(mousePressed){showXYPositions();}

}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255,200)
    rect(470,320,150,100,10)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 490, 360)
    fill(255, 255, 255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
