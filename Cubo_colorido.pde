import ddf.minim.analysis.*;
import ddf.minim.*;

Minim minim;
AudioPlayer song;
FFT fft;

void setup(){
size(500,500,P3D);

minim =new Minim(this);
song = minim.loadFile("LuvUNeedU.mp3",1024);

song.loop();

fft = new FFT (song.bufferSize(), song.sampleRate());



}

void draw(){
  background(100,20,100);
  fft.forward(song.mix);
   
 stroke(fft.getFreq(50)*1);
 strokeWeight(fft.getFreq(70)*1);
 translate(width*.5,height*.5,0);

 rotateY(fft.getFreq(10000)* 100);
 fill(fft.getFreq(200) * random(255),random(255),random(255));
 
 if(fft.getFreq( 200)>2){
 box(int(fft.getFreq(2000)));
 box(300);

if (fft.getFreq(1000)>500){
  
  
}
 }
  



}