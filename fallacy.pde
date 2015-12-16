//The Relativist Fallacy is committed when a person rejects a claim by asserting that the claim might be true for others but is not for them.
 
 int pressed = 0;
int pressedState = 0;

void setup(){
size (1400, 1000);
}

void draw(){
  if (pressedState ==1) { //for the first screen
    background(#F51111);
    textSize(60);
    fill(0);
    text("CRASH!!!!....wah,wah,wahhhh..", 350,500);
    
    //eye1
    fill(0);
    ellipseMode(CENTER);
    ellipse(600,650,30,30);
    
    //eye2
    fill(0);
    ellipseMode(CENTER);
    ellipse(700,650,30,30);
    
    //mouth line
    stroke(0);
    line(600,700,700,700);
    }
    else{
    background(255);
    textSize(20);
    fill(0,102,153);
    text("I text and drive all the time, I won't get into an accident...", 450, 300);
    
    //phone
    rectMode(CENTER);
    fill(#11F5E7);
    rect(900,500, 70,110);
    
    //phone screen
    rectMode(CENTER);
    fill(#0B0F0F);
    rect(900,500, 60,80);
    
    //phone button
    noFill();
    stroke(0);
    ellipseMode(CENTER);
    ellipse(900,547, 10,10); 
    
    //steering wheel
    noFill();
    stroke(0);
    ellipseMode(CENTER);
    ellipse(700,500, 150,150);
    stroke(#F50DFA);
    line(700,425,700,500);
    line(700,500,768,530);
    line(700,500,630,530);
   
    
    }
}

void mousePressed(){
  pressed = pressed +1;
  pressedState = (pressed % 2);
}
