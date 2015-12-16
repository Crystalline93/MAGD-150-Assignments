//Turkey leg class
class Turkeyleg{
  int centerX, centerY, size;
  
  // constructor
  Turkeyleg(){
    centerX = round(random(width));
    centerY = 10;
    size = round(random(50, 100));
  }
  
  //updated position of the turkey legs
  void update(){      
    centerX = round(random(-10,10)) + centerX;
    centerY = centerY + 1;
  }

  void display(){
    PImage img;
    img = loadImage("https://cloud.githubusercontent.com/assets/16195613/11822644/3e1e8d6a-a335-11e5-9916-382cef255f63.png");
    image(img, centerX, centerY);
        
  }
}
//Pie class
class Pie{
  int center1, center2, size1;
  
  Pie(){
    center1 = round(random(width));
    center2 = 15;
    size1 = round(random(10,20));
  }
  //updated position of the pies.
  void update(){
    center1 = round(random(-5,5)) + center1;
    center2 = center2 + 1;
  }
  
  void display(){
   PImage img2;
    img2 = loadImage("https://cloud.githubusercontent.com/assets/16195613/11822156/d3e3bf62-a332-11e5-871c-bc4984e1a460.jpg");
    image(img2, center1, center2);
  }
}

Turkeyleg[] legs;
Turkeyleg myTurkeyleg;
Pie[] pies;
Pie myPie;
Timer myTimer;
int numberLegs;
int numberPies;

void setup(){
  size(800,600);
  legs = new Turkeyleg[1000];
  for(int x = 0; x < legs.length-1; x++){ // for loop to make the legs continue to appear
    legs[x] = new Turkeyleg();
  }
  pies = new Pie[1000];
  for(int x = 0; x < pies.length-1; x++){ // for loop to make the pies continue to appear
    pies[x] = new Pie();
  }
  myTimer = new Timer(2000);
  myTimer.timerStart();
  
}

void draw(){
  background(255);
  fill(0);
  textSize(50);
  text("HAPPY TURKEY DAY!", 200,200);
  if(myTimer.isFinished()){
    numberLegs++;
  }
  
   if(myTimer.isFinished()){
      numberPies++;
    myTimer.timerStart();

  }
  if (numberLegs == legs.length-1){
    numberLegs = 0;
  }
  if (numberPies == pies.length-1){
    numberPies = 0;
  }
  
  for(int newLegs = numberLegs; newLegs > 0; newLegs --){
    legs[newLegs].update();
    legs[newLegs].display();
  }
  for(int newPies = numberPies; newPies > 0; newPies --){
    pies[newPies].update();
    pies[newPies].display();
}
  }
  
  class Timer{                  //To set up when the objects will start appearing
  float startTime, stopTime; 
   boolean started = false;  
  
  
  // Timer myTimer = new Timer(2000);   
  Timer(float _stopTime){
    stopTime = _stopTime;
  }
  
  //
  void timerStart(){
    startTime = millis();
    started = true;
  }
  
  void stopTimer(){
    started = false;
    println("time stopped");
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

