
import ddf.minim.analysis.*;
import ddf.minim.*;

Minim minim;
AudioPlayer musica;
FFT   fft;


Rain[] rains =new Rain [500];

void setup() {  
  size (500, 500,P3D);//render para 3D
  for (int i =0; i< rains.length; i++){

  rains [i]= new Rain(); //<>//
  }
  
  
minim = new Minim(this);
musica = minim.loadFile("Porter Robinson - Sea of Voices (Audio).mp3",1024);

musica.loop();
    
fft = new FFT (musica.bufferSize(),musica.sampleRate());

}

void draw(){
background(50,80,100);
stroke(255);

 for (int i =0; i< rains.length; i++){

  rains [i].show();
  rains [i].llueve();


fft.forward(musica.mix); 

if (fft.getFreq(50) >70){
background(random(255));
}

if (fft.getFreq(40)>50){
  ellipse(120,0 , fft.getFreq(40),fft.getFreq(40));

}


if (fft.getFreq(40)>50){
  ellipse(180,20, fft.getFreq(40),fft.getFreq(40));
}

if (fft.getFreq(40)>50){
  ellipse(180,0 , fft.getFreq(40),fft.getFreq(40));

}
if (fft.getFreq(30)>40){
  ellipse(280,0 , fft.getFreq(40),fft.getFreq(40));

}

if (fft.getFreq(30)>40){
  ellipse( 0, 0, fft.getFreq(40),fft.getFreq(40));
}

if (fft.getFreq(40)>50){
  ellipse( 80, 17, fft.getFreq(40),fft.getFreq(40));
}

if (fft.getFreq(30)>40){
  ellipse( 300, 0, fft.getFreq(30),fft.getFreq(30));

}
if (fft.getFreq(50)>60){
  ellipse( 250, 13, fft.getFreq(50),fft.getFreq(50));
}

if (fft.getFreq(30)>40){
  ellipse( 200, 0, fft.getFreq(30),fft.getFreq(30));
}

if (fft.getFreq(30)>40){
  ellipse( 310, 16, fft.getFreq(30),fft.getFreq(30));
}

if (fft.getFreq(50)>60){
  ellipse( 400, 15, fft.getFreq(50),fft.getFreq(50));
}


if (fft.getFreq(30)>40){
  ellipse( 350, 10, fft.getFreq(30),fft.getFreq(30));
}

if (fft.getFreq(30)>40){
  ellipse( 450, 0, fft.getFreq(30),fft.getFreq(30));
}

if (fft.getFreq(50)>40){
  ellipse( 500, 15, fft.getFreq(50),fft.getFreq(50));
}
 }
}