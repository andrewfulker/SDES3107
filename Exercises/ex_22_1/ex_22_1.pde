//Exercise 22.1 


float c = 25.0;
void setup() 
{ size(100, 100);
smooth(); 
noLoop();
}
void draw() 
{ arch(c);
}
void arch(float curvature) {
              float y =  100.0;
              strokeWeight(4);
              noFill();
              beginShape();
              vertex(40.0, y);
              bezierVertex(15.0, y-curvature, 40.0, 70.0, 40.0, 55.0);
              bezierVertex(89.0, 30.0, 67.0, y-curvature, 100.0, y);
              endShape();
}
