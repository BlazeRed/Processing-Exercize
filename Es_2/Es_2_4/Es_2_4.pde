Particle p;

void setup() {
  size(600,400);  // sets window size 600x400 pixel
  pixelDensity(displayDensity());  // if display is retina/hiDPI, use it
  
  p = new Particle(width/2, height/2, random(-2, 2), random(-2, 2));
}


void draw() {
  background(125);
  p.Update();
  p.Display();
}