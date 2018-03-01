class Ball {
  float x;
  float y;
  Ball(float tmpx, float tmpy) {
    x = tmpx;
    y = tmpy;
  }
  void display(float xSpeed,float ySpeed) {
    x = x+xSpeed;
    y = y+ySpeed;
    ellipse(x,y,10,10);
  }
}//EOC