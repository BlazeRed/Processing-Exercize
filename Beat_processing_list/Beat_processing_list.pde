import ddf.minim.*;
import ddf.minim.analysis.*;

Minim minim;
AudioPlayer song;
BeatDetect beat;
BeatListener bl;

ArrayList<Particle> p = new ArrayList<Particle>();

void setup()
{
  size(800, 600);
  
  minim = new Minim(this);
  
  //Comfort_Fit_-_03_-_Sorry.mp3
  song = minim.loadFile("Comfort_Fit_-_03_-_Sorry.mp3", 2048);
  song.play();
  beat = new BeatDetect(song.bufferSize(), song.sampleRate());
  beat.setSensitivity(300);  
  bl = new BeatListener(beat, song);  
  
  for(int i=0; i<p.size(); i++){
    p.add(new Particle());
  }
}

void draw(){
  background(50);
  
  
  if ( (p.size() < 30) && beat.isHat() ){
    p.add(new Particle());
  }
  
  for(int i=0; i<p.size(); i++){
    Particle thisP = p.get(i);
    thisP.Update();
    thisP.Display();
    if( thisP.CheckBorders()){
      p.remove(thisP);
    }
    
    if( beat.isKick() ){
      thisP.repulse();
      }
      
      if(beat.isSnare()){
        thisP.changeColor();
      }
    }
  }