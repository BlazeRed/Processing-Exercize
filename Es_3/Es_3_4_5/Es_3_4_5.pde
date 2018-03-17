Particle p [] = new Particle [20];
Attractor a;

void setup() {
   size(800,600);
   background(50);
   a = new Attractor();
   for(int i=0; i<p.length; i++){
     p[i] = new Particle();
   }
}

void draw() {
  background(50);
  a.Display();
  for(int j=0; j<p.length; j++){
    PVector force = a.attract(p[j]);
    p[j].applyForce(force);
  
    p[j].Update();
    p[j].Display();
  }
}