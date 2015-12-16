int pressed = 0;
int pressedState = 0;
int posX = 900;      // starting position of X for ghost
int posY = 600;      // starting position of Y for ghost
int movementSize = -5;  //Makes the ghost move up. Make it positive to move down.

float gravity = 0.2;  //how fast ghost is moving

void setup(){
    size (1000,1000);
    background(0);
}


void draw(){
  if (pressedState ==1) {
   background(#0C1383); 
   fill(#FF9E00); 
   textSize(50);
   text("HAPPY HALLOWEEN :D", 250,150);
   
   ghost();
}  
  
   else{
   background(#03DBFF);
  
   }
   
  for(int x=1; x < 10; x++){
  fill(#79A3CE);
  rectMode(CENTER);
  rect(500,600,300,300); //house
  
  fill(0);
  rectMode(CENTER);
  rect(500,700,50,100); //door
  
  fill(0);
  rectMode(CENTER);  
  rect(420,550,50,50);  //left window
  
  fill(0);
  rectMode(CENTER);
  rect(580,550,50,50);  //right window
  
  fill(0);
  triangle(350,450,500,300,650,450); //roof
  
  fill(#065009);
  rectMode(CENTER);
  rect(0,900,2000,300); //grass
  
  fill(#7C7C7C);
  arc(900,750,95,119,3.137,radians(360)); //gravestone

  
  
  }
  
}

void mousePressed(){
  pressed = pressed + 1;
  pressedState = (pressed % 3);
  
}

//To move ghost 
void ghost(){          
  if(posX-25 >= width){
    movementSize = movementSize * 1;
  } else if (posX-25 <=0){
    movementSize = movementSize * 1;
  }
  posY = posY + movementSize;
  fill(#05FF34);
  arc(posX, posY, 75,190,3.137,radians(360));
  fill(0);
 
}
