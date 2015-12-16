size(600,600);
background(0);

//Pacman_body
fill(230, 200, 0);
ellipseMode(CENTER);
ellipse(270,250,0,0);
arc(300,300,300,300,0, PI+HALF_PI, PIE);


//Pacman_eye
fill(0);
ellipseMode(CORNERS);
ellipse(200,200,230,230);

//Pellet1
fill(255);
rectMode(CORNER);
rect(335,250,20,20);

//Pellet2
fill(255);
rectMode(CENTER);
rect(400,200,20,20);

//Line1
stroke(245);
line(100,550,550,550);

//Line2
stroke(200);
line(100,500,550,500);

//Point1
point(100,525);

//Point2
point(550,525);
