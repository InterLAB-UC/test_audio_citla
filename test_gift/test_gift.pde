import ddf.minim.analysis.*;
import ddf.minim.*;

Minim minim;
AudioPlayer musica;
FFT   fft;

void setup() {
  size(500, 500, P3D);
 
 
  minim = new Minim(this);
  musica = minim.loadFile("Porter Robinson - Sea of Voices (Audio).mp3", 1024);

  musica.loop();

  fft = new FFT (musica.bufferSize(), musica.sampleRate()); 
}

void draw() {
  background(200);
  fft.forward(musica.mix);
  stroke(fft.getFreq(10000)*10);
  strokeWeight(fft.getFreq(700)*.5);
  translate(width*.5, height*.5, 0);
  rotateX(fft.getFreq(1000) * 0.05);
  rotateY(fft.getFreq(1000) * 0.05);
  fill(fft.getFreq(200) * 20, 0, 160);
  if (fft.getFreq(311.126984)>0) {
  sphereDetail(int(fft.getFreq(311.126984)));
  sphere(200);
  }
}
