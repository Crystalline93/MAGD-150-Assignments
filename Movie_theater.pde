void  setup() {
    size (1400,1000);
    background(0);

//screen 
fill(#131E67);
rectMode(CENTER);
rect(700,400,1300,700);

//MOON!!!!!
fill(#FAF677);
ellipseMode(CENTER);
ellipse(1200,200,250,250);

//stars
stroke(255);
point(275,100);
point(225,223);
point(385,150);
point(405,70);
point(115,85);
point(300,190);

//movie seat
fill(#FF0303);
arc(800,900,600,600,3.137,radians(360));

//line1
stroke(#1CE6FF);
line(0,900,1400,900);

//line2
stroke(#1CE6FF);
line(0,50,1400,50);

//milk duds
fill(#FFC905);
rectMode(CENTER);
rect(1200,850,50,100); 

//pumpkin body
fill(#FA9600);
stroke(0);
ellipseMode(CENTER);
ellipse(700,400,360,250);

//pumpkin stem
fill(#067912);
beginShape();
  vertex(700,280);
  vertex(725,280);
  vertex(725,175); //TOP OF STEM
  vertex(700,230);
  vertex(700,280);
endShape(CLOSE);

//pumpkin smile
fill(0);
arc(700,425,250,200,0,radians(180));

//pumpkin eyes
fill(0);
triangle(650,300,600,370,700,370);
fill(0);
triangle(800,300,750,370,850,370);

//popcorn bag
fill(#FF1C1C);
beginShape();
  vertex(250,800);
  vertex(450,800);
  vertex(400,900);
  vertex(300,900);
endShape(CLOSE);  

//popcorn
beginShape();
fill(#FAFF03);
   vertex(320,750);
   vertex(325,745);
   vertex(350,740);
   vertex(365,775);
   vertex(340,780);
   vertex(320,770);
endShape(CLOSE);
beginShape();
fill(#FAFF03);
    vertex(420,770);
    vertex(425,740);
    vertex(450,750);
    vertex(455,780);
    vertex(417,790);
    vertex(420,770);
endShape(CLOSE);

};

void draw() {
   quad(pmouseX + 50, pmouseY + 30, 100,25, mouseX, mouseY, 45, 200); 

};

void mousePressed(){
  fill (#B20505);
  ellipseMode(CENTER);
  ellipse(1200,200,250,250);
};

void keyPressed(){
  //pumpkin body
fill(#00FF4A);
stroke(0);
ellipseMode(CENTER);
ellipse(700,400,360,250);

//pumpkin stem
fill(#067912);
beginShape();
  vertex(700,280);
  vertex(725,280);
  vertex(725,175); //TOP OF STEM
  vertex(700,230);
  vertex(700,280);
endShape(CLOSE);

//pumpkin smile
fill(0);
arc(700,425,250,200,0,radians(180));

//pumpkin eyes
fill(0);
triangle(650,300,600,370,700,370);
fill(0);
triangle(800,300,750,370,850,370);

};
