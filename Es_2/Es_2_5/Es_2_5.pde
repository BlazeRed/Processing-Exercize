Particle p[] = new Particle[20];

void setup() {
  size(600,400);  // sets window size 600x400 pixel
  pixelDensity(displayDensity());  // if display is retina/hiDPI, use it
  
  //creazione particelle
  for(int i=0; i<p.length; i++){
  p[i] = new Particle( (int)random(width), (int)random(height), random(-2, 2), random(-2, 2));
  }
  
}


void draw() {
  background(125);
  
  for(int j=0; j<p.length; j++){
  p[j].Update();
  p[j].Display();
  }
  
}