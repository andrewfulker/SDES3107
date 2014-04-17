PImage img;
PImage zoom;
color pixelColour;

void setup() {
  size(500,500);
  img = loadImage("MP_Foot.jpeg");
}

void draw(){
  image(img,0,0,width,height);
  
  zoom = get(mouseX-10,mouseY-10,20,20);
  image(zoom,mouseX,mouseY,80,80);
  pixelColour = get(mouseX,mouseY);
  fill(pixelColour);
  ellipse(mouseX,mouseY,50,50);
}
