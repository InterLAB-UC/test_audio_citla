Star [] stars = new Star [800];

import ddf.minim.analysis.*;
import ddf.minim.*;

Minim minim;
AudioPlayer musica;
FFT fft;

float circleX;
float circleSpeed;

void setup(){
size(800,800);
  for (int i = 0; i < stars.length; i++){
stars [i] = new Star();

  }
  
  minim =new Minim (this);
  musica = minim.loadFile("deadmau5 - Strobe.mp3",1024);
 musica.loop();
 
 fft= new FFT( musica.bufferSize(),musica.sampleRate());

 
 circleX =10;
 circleSpeed =6;
 
}


void draw(){

background(0);
translate (width/2, height/2);
println(musica.getGain());
for (int i = 0; i < stars.length; i++){
stars [i].update();
stars [i].show();
}

//println( circleX + " " + circleSpeed);
ellipse (circleX,circleX,30,30);
circleX =circleX + circleSpeed;

if (circleX >=height|| circleX<= 0){
  circleSpeed = circleSpeed ;
}

}