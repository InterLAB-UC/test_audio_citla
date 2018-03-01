Ball []b = new Ball[10];

float x;
float y;
float ySpeed;

void setup() {
  size(500, 500);
  for (int i = 0; i < b.length; i++) {
    b[i] = new Ball();
  }
  
  ySpeed = 0.2;
}

void draw() {
  for(int i = 0; i< b.length; i++){
    x = random(width);
    x = x+random(-1, 1);
    y = y+ySpeed;
    b[i].display(x, y);
  }
}