Particle p[] = new Particle [20];
//creo le forze da poi applicare alla particella
PVector gravity = new PVector(0, 0.1);
PVector wind = new PVector(0.01, 0);

void setup() {
   size(600,400);
   //creo varie particelle con massa random
   for(int i=0; i<p.length; i++){
   p[i] = new Particle( new PVector( 0, 0), random(0.1, 4));
   }
}

void draw() {
  background(255);
  
  for(int i=0; i<p.length; i++){
    //qua va inserita la forza attraverso il metodo applyForce()
    p[i].applyForce(gravity);
    p[i].applyForce(wind);
  
    p[i].Update();
    p[i].CheckBorders();
    p[i].Display();
  }
  
}