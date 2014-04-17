
void setup(){
  size(500,500);
  fill(15,23,54);
  noStroke();
  frameRate(10);
}

void draw(){
  
background(23,43,3);
fill(12,124,54);
ellipse(mouseX+50,mouseY+50,50,50);
ellipse(mouseX,mouseY,50,50);
ellipse(mouseX-50,mouseY-50,50,50);
ellipse(mouseX+50,mouseY-50,50,50);
ellipse(mouseX-50,mouseY+50,50,50);
}
