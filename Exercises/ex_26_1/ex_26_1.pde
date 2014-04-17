void setup(){
  size(500,500);
}

void draw(){

  
  background(100,3,50);
 fill(5,150,5);
  ellipse(mouseX,mouseY,50,50);
  if (mousePressed == true){
   ellipse(mouseX,mouseY,100,100);
   
  
  
   line(mouseX,mouseY,pmouseX,pmouseY);
  }
}
