Particle p;
//creo le forze da poi applicare alla particella
PVector gravity = new PVector(0, 0.01);
PVector wind = new PVector(0.01, 0);

void setup() {
   size(600,400);
   p = new Particle( new PVector( width/2, height/2), 1, 20);
}

void draw() {
  background(255);
  //qua va inserita la forza attraverso il metodo applyForce()
  p.applyForce(gravity);
  p.applyForce(wind);
  
  p.Update();
  p.CheckBorders();
  p.Display();
  
}