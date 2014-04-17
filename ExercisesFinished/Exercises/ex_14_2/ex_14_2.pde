//Exercise 14.2
// Explore drawing circles and arcs with sin() and cos(). 
//Develop a compositionfrom the results of the exploration.

size (500,500); 
background(200,23,250);
noStroke();
smooth();
int radius = 200;
//the bigness of the circle 
fill(34,43,80);
// 0 12 24 36 ... 360
for (int deg = 0; deg < 360; deg += 10) {
 //deg= degrees. from zero to three sixty which makes up a circle
 //the inverval is "deg += ..." is the amount of circles it allots the smaller the number the more the circles 
 
  float angle = radians(deg);
  float x = 250 + (cos(angle) * radius);
  //float x= 250 is the placement on the page 
  float y =250 + (sin(angle) * radius);
  //float y= 250 is the placement on the page 
  ellipse(x, y, 6, 6);
  //is the roundness of the circle 
}


