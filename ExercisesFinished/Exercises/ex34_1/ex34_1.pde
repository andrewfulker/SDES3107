int numFrames = 12; 
// The number of animation frames
int frame = 0; // The frame to display
int xCoordinate = 0;
PImage[] images = new PImage[numFrames];
PImage foot;
//Image array
void setup() {
  size(700, 500);
  frameRate(20); // Maximum 20 frames per second
  background(255);

  foot = loadImage("MP_Foot.jpeg");
  images[0] = loadImage("00.jpg"); 
  images[1] = loadImage("01.jpg"); 
  images[2] = loadImage("02.jpg"); 
  images[3] = loadImage("03.jpg"); 
  images[4] = loadImage("04.jpg"); 
  images[5] = loadImage("05.jpg"); 
  images[6] = loadImage("06.jpg"); 
  images[7] = loadImage("07.jpg"); 
  images[8] = loadImage("08.jpg"); 
  images[9] = loadImage("09.jpg"); 
  images[10] = loadImage("10.jpg"); 
  images[11] = loadImage("11.jpg");
}

void draw() {
  background(255);

  xCoordinate+=4;
  frame++;
  if (xCoordinate>width) {
    xCoordinate = -60;
  }


  if (frame == numFrames) {
    frame = 0;
  }
  image(images[frame], xCoordinate, 400);
  
  image(foot, mouseX-foot.width/2, mouseY-foot.height); //POSITIONING THE FOOT TO THE MOUSE
  
}


//frame++;
//if (frame == numFrames) {
//frame = 0;
//}
//image(images[frame], 400, 250);
//
//frame++;
//if (frame == numFrames) {
//frame = 0;
//}
//image(images[frame], 300, 250);
//
//frame++;
//if (frame == numFrames) {
//frame = 0;
//}
//image(images[frame], 200, 250);
//
//frame++;
//if (frame == numFrames) {
//frame = 0;
//}
//image(images[frame], 100, 250);
//}

