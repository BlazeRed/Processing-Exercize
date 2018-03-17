Particle p [] = new Particle [50];

void setup() {
   size(800,600);
   background(50);
   for(int i=0; i<p.length; i++){
     p[i] = new Particle();
   }
}

void draw() {
  background(50);
  for(int i=0; i<p.length; i++){
    p[i].Display();
    p[i].Update();
    p[i].CheckBorders();
    for(int j=0; j<p.length; j++){
      PVector force = p[i].attract(p[j]);
      p[j].applyForce(force);
    }
  }
}