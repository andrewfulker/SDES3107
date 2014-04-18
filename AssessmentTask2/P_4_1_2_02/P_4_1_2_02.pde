// P_4_1_2_02.pde
// 
// Generative Gestaltung, ISBN: 978-3-87439-759-9
// First Edition, Hermann Schmidt, Mainz, 2009
// Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
// Copyright 2009 Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
//
// http://www.generative-gestaltung.de
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/**
 * image feedback process.
 * 
 * KEYS
 * del, backspace      : clear screen
 * s                   : save png
 */

import java.util.Calendar;

int maxCount = 5000; //max count of the cirlces
int currentCount = 1;
float[] newx = new float[maxCount];
float[] newy = new float[maxCount];
float[] x = new float[maxCount];
float[] y = new float[maxCount];
float[] r = new float[maxCount]; // radius

boolean drawGhosts = false;

PImage img;

void setup() {
  size(700, 500);
  //img = loadImage(selectInput("select an image"));
  PFont drip;
  drip = createFont("adrippingmarker-48.vlw",48); 
  textFont(drip);
  img = loadImage("fishy.jpg");
  background(255);
  image(img,0,0);

smooth();

  
  x[0] = width/2;
  y[0] = height/2;
  //r[0] = 10;
  r[0] = 360; 
}



void draw() {
  int x1 = (int) random(0,mouseY+500); //mouse in top right corner shuffles picture more frequently
  int y1 = (int) random(0,mouseX+500); //mouse in bottom left corner shuffles picture slower

  int x2 = round(x1 + random(-1, 1));
  int y2 = round(y1 + random(-1, 1)); // smaller distortion movement - water effect

  int w = 700; //size of distortion
  int h = 500;

  copy(x1,y1, w,h, x2,y2, w,h);

//FISHY

float newR = random(1, 7);
  float newX = random(0+newR, width-newR);
  float newY = random(0+newR, height-newR);

  float closestDist = 100000000;
  int closestIndex = 0;
  // which circle is the closest?
  for(int i=0; i < currentCount; i++) {
    float newDist = dist(newX,newY, x[i],y[i]);
    if (newDist < closestDist) {
      closestDist = newDist;
      closestIndex = i; 
    } 
  }

  // aline it to the closest circle outline
  float angle = atan2(newY-y[closestIndex], newX-x[closestIndex]);

  newx[currentCount] = newX;
  newy[currentCount] = newY;
  x[currentCount] = x[closestIndex] + cos(angle) * (r[closestIndex]+newR);
  y[currentCount] = y[closestIndex] + sin(angle) * (r[closestIndex]+newR);
  r[currentCount] = newR;
  currentCount++;

  // draw circles at random position and lines
  if (drawGhosts) {
    for (int i=1 ; i < currentCount; i++) {
      fill(230);
      ellipse(newx[i],newy[i], r[i]*2,r[i]*2);  
      line(newx[i],newy[i], x[i],y[i]);
    }
  }
  
  for (int i=0 ; i < currentCount; i++) {
    if (i == 0) noFill();
    else fill(50);
    ellipse(x[i],y[i], r[i]*2,r[i]*2);  
  }

  if (currentCount >= maxCount) noLoop();

stroke(32,53,250);
text("INK IN",50, 50); text("DA WATER",100, 100); 
}

void keyReleased() {
  if(keyCode == DELETE || keyCode == BACKSPACE) {
    background(255);
    image(img,0,100);
  }
  if(key=='s' || key=='S') saveFrame(timestamp()+"_##.png");
}

// timestamp
String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}

