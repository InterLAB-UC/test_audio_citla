Ball []b = new Ball[10];

float x;

float ySpeed;

void setup() {
  size(500, 500);
  for (int i = 0; i < b.length; i++) {
    b[i] = new Ball( random(width),random(10));
  }
  
  ySpeed = 0.2;
}

void draw() {
  for(int i = 0; i< b.length; i++){
    b[i].display(random(-1,1),ySpeed);
  }
}