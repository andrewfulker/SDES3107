
size(300,300);
background(200,5,100);
stroke(255,5,5);
fill(5,5,255);
strokeWeight(5);

int a = height/10;
float MiddleX = height/2;
float MiddleY = width/2;
float b = width-a;

line(a,a+50, MiddleX, MiddleY);
line(a,a+100,MiddleX,MiddleY);
line(a,a+150,MiddleX,MiddleY);
line(a,a+200,MiddleX,MiddleY);
line(a,a+250,MiddleX,MiddleY);

line(a+250,a, MiddleX, MiddleY);
line(a+100,a,MiddleX,MiddleY);
line(a+150,a,MiddleX,MiddleY);
line(a+200,a,MiddleX,MiddleY);
line(a+250,a,MiddleX,MiddleY);


ellipse(height/2,width/2,height/2,width/2);
