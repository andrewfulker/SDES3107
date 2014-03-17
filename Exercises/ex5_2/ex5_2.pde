if ((3<5) && (3>5))
{
}
//between brackets will run if both things are true.

//    else
//    this will run if the if statement doesnt. 

//    && AND
//    || OR


size(500, 500);
strokeWeight(3);
background(0, 0, 250);

//x = 0 5 10 15 20

for (int x = 0; x<width; x=x+10) {
  if ((x>50) && (x<110)) {
    strokeWeight(3);
    stroke(50, 30, 0);
    //  } else {
    //    stroke(0,0,0);
   line(x,0,x,height);
}

if ((x>160) && (x<220)){
  strokeWeight(3);
  stroke(50,30,0);
  line(x,0,x,height);
}

else { strokeWeight(6);
line(x,0,x,height);}
}
