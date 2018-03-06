 //<>//
import ddf.minim.analysis.*;
import ddf.minim.*;

Minim minim;
AudioPlayer musica;
FFT   fft;


void setup() {
  size (500, 500);



  minim = new Minim(this);
  musica = minim.loadFile("Porter Robinson - Sea of Voices (Audio).mp3", 1024);

  musica.loop();

  fft = new FFT (musica.bufferSize(), musica.sampleRate());
}

void draw() {
  background(50, 80, 100);
  stroke(255);

  fft.forward(musica.mix);
  println(fft.getFreq(311.126984));
  if (fft.getFreq(311.126984)<5) {
    ellipse(width/2, height/2, fft.getFreq(311.126984), fft.getFreq(311.126984));
  }
}