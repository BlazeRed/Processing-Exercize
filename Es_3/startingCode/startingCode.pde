Particle p;

void setup() {
   size(600,400);
   p = new Particle( new PVector( width/2, height/2), 1, 20);
}

void draw() {
  background(255);
  p.Update();
  p.CheckBorders();
  p.Display();
  
}