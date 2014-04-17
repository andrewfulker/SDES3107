
void setup(){
  size(500,500);
  fill(15,23,54);
  noStroke();
  frameRate(10);
}

void draw(){
  
background(23,43,3);
fill(12,124,54);

ellipse(mouseX*2,mouseY/2,50,50);
fill(250);
rect (mouseY, mouseX,50,50);
fill(23,24,46);
triangle(mouseX,mouseY,23,25,123,53);

}



