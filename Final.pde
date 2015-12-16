// My theme is spongebob; in particular a random jellyfish from spongebob.
int stateCount = 0;
int State = 0;

PImage webImg;        // for treasure chest
PImage webImg2;       // for jellyfish fields 
PImage webImg3;       // for houses

PVector ellipseFish;
int radius;
float distance = 0;
Jellyfish newJellyfish;

Bubbles[] bubbles;    //bubbles array
Timer myTimer;
int numberBubbles;


void setup(){
  size(800,600);
  ellipseFish = new PVector(500,500);     //where the fish will be x,y
  radius = 80;
  
  String url = "http://img3.wikia.nocookie.net/__cb20140904215856/simpsonstappedout/images/3/32/Treasure_Chest.png";
  webImg = loadImage(url, "png");
  String url2 = "https://i.ytimg.com/vi/lI9iCqjsquU/maxresdefault.jpg";
  webImg2 = loadImage(url2,"jpg");
  String url3 = "https://lh6.googleusercontent.com/-n8oFhQDbhkk/TXSeCas4tjI/AAAAAAAAAFw/NzLTIGYwiRA/s1600/Bikini-Bottom-spongebob-squarepants-116963_1024_768.jpg";
  webImg3 = loadImage(url3, "jpg");
  
  newJellyfish = new Jellyfish();
  
   bubbles = new Bubbles[1000];                  //bubble count
    for (int x = 0; x < bubbles.length-1; x++){
      bubbles[x] = new Bubbles();
    }
    myTimer = new Timer(1000);        //10 seconds for timer
    myTimer.timerStart();
    

}

void draw(){
  if (State ==0){          //mouse clicked 0 times
  background(#387DCE);
  
  //The fish 
  ellipseMode(RADIUS);
  strokeWeight(0);
  ellipse(ellipseFish.x, ellipseFish.y, 100, 50);    //fish shape
  fill(#030804);
  triangle(600,500,650,450,650,550);          //fish tail
  fill(#030804);
  triangle(480,550,500,550,510,570);    //fish bottom fin
  fill(#030804);
  triangle(480,450,500,450,510,430);    //fish top fin
  fill(255);
  PFont font;
  font = loadFont("SnapITC-Regular-40.vlw");
  textFont(font,45);
  text("JELLYFISH!!!", 200,100);
 newJellyfish.update();
 newJellyfish.display();
 
  
  
  
  
  float distance = dist(ellipseFish.x, ellipseFish.y, mouseX, mouseY);  //where it'll change red
  
  if(distance < radius){  //what will show when mouse is on le fish.
    fill(#FF2903);
    line(450,470,470,500);
    line(450,500,470,470);
    stroke(#030804);
    line(408,520,430,520);      //fish mouth(straight)
  }  else {               //what will show when mouse is not on le fish.
      fill(#030804);
      ellipse(460,480,25,25);  //fish eye
      fill(#03FF69);
     
      
    
 }
  }
  if (State ==1){              //mouse clicked 1 time
    background(#4C9DDE);
   
    image(webImg2, 0, 0);
    image(webImg, 10,450);
    fill(#E5D6BE);
    stroke(#E5D6BE);
    newJellyfish.update();
    newJellyfish.display();
   
    if(myTimer.isFinished()){
      numberBubbles++;
      myTimer.timerStart();
    }
    if (numberBubbles == bubbles.length-1){
      numberBubbles = 0;
    }
    
    for(int newBubbles = numberBubbles; newBubbles > 0; newBubbles --){
      bubbles[newBubbles].update();
      bubbles[newBubbles].display();
    }
   }

    if (State ==2){              //mouse clicked 2 times
      image(webImg3, 0,0);
      newJellyfish.update();
      newJellyfish.display();
      PFont font;
      fill(255);
  font = loadFont("SnapITC-Regular-40.vlw");
  textFont(font,40);
  text("JELLYFISH", 35,50);
  text("are le BEST!", 35,100);
    }




}


void mousePressed(){
  //mState = !mState;
  stateCount++;
  State = (stateCount % 3);
  println(State);
  

}

void keyPressed(){
  newJellyfish.keyPressed();
}

void keyReleased(){
  newJellyfish.keyReleased();
}

class Bubbles{
  int centerX, centerY, size;
  
  //constructor
  Bubbles(){
    centerX = round(random(width));
    centerY = 500;
    size = round(random(60,100));
  }
  //updated position of bubbles
  void update(){
    centerX = round(random(0,0)) + centerX;
    centerY = centerY -1;
  }
  
  void display(){
    fill(#CFF8FA);
    ellipse(centerX, centerY, size, size); //bubbles
    fill(255);
    ellipse(centerX + -15, centerY + -20, 25 * size/100, 15 * size/100); //reflections
  }
}

class Jellyfish{
  int centerX, centerY, offset1, offset2, offsetX1, offsetX2; 
  boolean keys[]; // to use keys to move. W,S,A,D.
  
  int xVelocity, yVelocity;
  // constructor
  Jellyfish(){
    centerX = round(random(0, width));
    centerY = round(random(0, height));
    offset1 = -38;
    offset2 = +0;
    offsetX1 = -25;
    offsetX2 = - 10;
    keys = new boolean [4];
  }
  
  
  void display(){ //JELLYFISH
    ellipseMode(CENTER);
    fill(#FF71C4);
    arc(centerX, centerY, 75, 110, 3.137, radians(360)); //jelly body
    fill(#CE4FC8);
    rect(centerX  + offset1, centerY + offset2,10,50); // 1st leg (from left to right)
    rect(centerX + offsetX1 , centerY + offset2, 10,30); // 2nd leg
    rect(centerX + offsetX2, centerY + offset2, 10, 50); // 3rd leg
    rect(centerX + 10, centerY + offset2, 10, 30); // 4th leg
    rect(centerX + 27 , centerY + offset2, 10,50); // 5th leg
    fill(#860980);
    ellipse(centerX + -20, centerY + offsetX2, 20, 15); // 1st spot (from left to right)
    ellipse(centerX , centerY + -35, 38, 25);  // 2nd spot (big spot)
    ellipse(centerX +20, centerY + -5, 10, 5); // 3rd spot
  }
  
  void update(){
    if (keys[0]){
      yVelocity = -5;
    }
    if (keys[1]){
      yVelocity = 5;
    }
    if(keys[2]){
      xVelocity = -5;
    }
    if(keys[3]){
      xVelocity = 5;
    }
    if(!keys[2] && !keys[3]){      //if 'a' and 'd' are held down together
      xVelocity = 0;
    }
    if(!keys[0] && !keys[1]){      //if 'w' and 's' are held down together
      yVelocity = 0;
    }
    
    centerX += xVelocity;
    centerY += yVelocity;
  }
 
  void keyPressed() {          //to use w,s,a,d keys
    if(key == 'w'){
      keys[0] = true;
      } 
      if(key == 's'){
      keys[1] = true;
      }
      if(key == 'a'){
      keys[2] = true;
      } 
      if(key == 'd'){
      keys[3] = true;
      }
    }
   
   void keyReleased(){
     if(key == 'w'){
       keys[0] = false;
     }
     if(key == 's'){
       keys[1] = false;
     }
     if(key == 'a'){
       keys[2] = false;
     }
     if(key == 'd'){
       keys[3] = false;
     }
   }
}
  
  class Timer{                    //for le bubbles
  float startTime, stopTime; 
   boolean started = false;  
  
  
 
  Timer(float _stopTime){
    stopTime = _stopTime;
  }
  
  
  void timerStart(){
    startTime = millis();
    started = true;
 }
  
  void stopTimer(){
    started = false;
    
  }
  

  boolean isFinished(){
    float passedTime = millis() - startTime;
    if((passedTime > stopTime) && (started)) {
      return true;
    } else {
      return false;
    }
  }
}
