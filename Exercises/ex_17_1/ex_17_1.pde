//Exercise 17.1 

//Use rotate() to change the orientation of a shape.
size(500,500);
background(12,200,100);
smooth();
stroke(213, 180);
translate(250, 250);
for (int i = 0; i < 40; i++) { 
strokeWeight(i);
rotate(PI/20);  
line(0, 0, 500, 0);
}
