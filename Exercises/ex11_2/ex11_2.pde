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


String s1 = "ehhh";
String s2 = "ohhh";
String s4 = "ahhh";
String s5 = "uhhh";
String s6 = "yhhh";
println(s1);
println(s2);
println(s1 + s2 + s4 + s5 + s6);


