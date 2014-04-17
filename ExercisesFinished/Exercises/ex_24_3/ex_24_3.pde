void setup(){
size(700,500);


}

void draw() {
PImage broc;
broc = loadImage ("10276462_10152112815338412_368868217_n.jpg");
image(broc, 0,0,width,height);

PImage ele;
ele =loadImage ("10255128_10152112816043412_50564071_n.jpg");

image(ele,mouseX,mouseY,100,100);



  if((keyPressed==true) && (key == 'p')) {
   
    image(ele,400,200,ele.width/2, ele.height/2);
  }}
