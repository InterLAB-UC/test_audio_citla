class Rain{
float x = random(width);
float y = random (-500,-50);
float yspeed  = random(-400,-10);


void llueve(){
y = y + yspeed;
yspeed =yspeed +0.1;

if ( y >height) { 
y =random (-200,-100);
yspeed = random(4,10);

}


}

void show (){
  stroke(138,43,226);
  ellipse(x,y,5,10);
  stroke(150);
  //fill(random(255));
 
}
}