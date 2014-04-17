//Exercise 20.2

//2. Move a shape from left to right across the screen. 
//When it moves off the right edge, return it to the left.

float y = 0.0;
void setup() 
{ size(500, 500); smooth(); fill(0); 
}
void draw() { background(204); 
fill(0);
ellipse(y, 250, 70, 500);

fill(250);
ellipse(y+20,50,50,50);
ellipse(y-20,50,50,50);

fill(0);
ellipse(y+20,60,10,10);
ellipse(y-20,60,10,10);

fill(250);
ellipse(y,100,50,50);

fill(200,0,0);
ellipse(y,120,20,100);

fill(0);
ellipse(y,80,50,50);



y += 0.5;
if (y >600) {
y = -50.0; }
}
