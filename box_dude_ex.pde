BoxDude myBoxDude;
BoxDude specialBoxDude;
Timer myTimer;
CShip myCShip;

void setup(){
  size(800,600);
  myBoxDude = new BoxDude();
  specialBoxDude = new BoxDude(100, 100, 10, 30);
  
  myTimer = new Timer(3000);
  myCShip = new CShip();
}

void draw(){
  //myBoxDude.move();
  myBoxDude.display();
  specialBoxDude.display();
  myCShip.display();
  
  if (myTimer.isFinished() == true){
    ellipse(300,300,200,200);
  }
  myCShip.display();
  myCShip.move();
}



class BoxDude{
  int centerX, centerY, offset1, offset2;

  BoxDude(){
    centerX = round(random(0, width));
    centerY = round(random(0, height));
    offset1 = 15;
    offset2 = 15;
  }

  BoxDude(int _centerX, int _centerY, int _offset1, int _offset2){
    centerX = _centerX;
    centerY = _centerY;
    offset1 = _offset1;
    offset2 = _offset2;
  }

  void display(){
    rectMode(CENTER);
    fill(255, 0,0);
    rect(centerX, centerY, 100, 30);
    fill(255);
    rect(centerX+offset1, centerY+offset2, 20, 20);
    rect(centerX-offset2, centerY-offset2, 20, 20);
  }

  void move(){
    //int stepsize = 5;
    centerX = round(random(-5,5)) + centerX;
    centerY = round(random(-5, 5)) + centerY;
  }
}




class CShip{
  int centerX, centerY, offset1, offset2, offsetX1, offsetX2, r1, r2, r3;
  
  // constructor
  CShip(){
    centerX = round(random(0, width));
    centerY = round(random(0, height));
    offset1 = -20;
    offset2 = +20;
    offsetX1 = -20;
    offsetX2 = + 20;
    r1 = 40;
    r2 = 20;
    r3 = 15;
  }
  
  void display(){
    fill(#283E2C);
    ellipse(centerX, centerY, r1, 80); //ship main body
    fill(#EAEAEA);
    ellipse(centerX , centerY + offset1, r2, r2); // cockpit
    fill(#430008);
    ellipse(centerX + offsetX1 , centerY + offset2, r3, r3); //engine1
    ellipse(centerX + offsetX2 , centerY + offset2, r3, r3); //engine1
  }
  
  void move() {
    if(keyPressed){
      if(key == 'w'){
        centerY = centerY - 5;
      } 
      if(key == 'a'){
        centerX = centerX - 5;
      }
      if(key == 'd'){
        centerX = centerX + 5;
      } 
      if(key == 's'){
        centerY = centerY + 5;
      }
    }
  }
}



class Timer{
  int savedTime;  // When Timer started
  int totalTime;  // How long Timer should last
  
  // The constructor, set how long the Timer last with integer value
  Timer(int _totalTime){
    totalTime = _totalTime;
  }
  
  // Start the Timer
  void start() {
    savedTime = millis();
  }
  
  boolean isFinished() {
   // check how much time has passed
   int passedTime = millis() - savedTime;
   if (passedTime > totalTime) {
     return true;
   } else {
     return false;
   }
  }
}
