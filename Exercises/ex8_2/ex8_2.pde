size(150,500);
background(100,20,100);
fill(200,20,100);
stroke(250,20,20);
strokeWeight(6);

for (int x = 0; x < 500; x ++) {
  float n = norm(x,0.0,100.0);
  float y = pow(n,4);
  y *=100;
  point(x,y);
}
