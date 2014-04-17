//exercise 8.2 

size(100,700);
background(12,231,76);
fill(12,45,76);
stroke(250,20,140);
strokeWeight(9);

for (int x = 0; x < 600; x ++) {
  float n = norm(x,0.0,100.0);
  float y = pow(n,4);
  y *=600;
  point(x,y);
}

