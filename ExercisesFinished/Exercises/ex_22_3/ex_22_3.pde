//Exercise 22.3 

//Modify code 22-04 to create a sequence of different compositions.

int x = 20;
int u = 14;
float a = -0.12;

void setup () {
 size(100,100); 
  stroke(0, 153); 
  smooth();
  noLoop();

}
void draw() 
{ background(250,100,40);
tail(x, u, a);
}
void tail(int xpos, int units, float angle) { 
pushMatrix();
translate(xpos, 0);
for (int i = units; i > 0; i--) {
    strokeWeight(i);
    line(50, 50, 20, 20);
    translate(7, 8);
    rotate(angle);
}
  popMatrix();
}
