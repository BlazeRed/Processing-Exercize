Particle p[] = new Particle [20];
//creo le forze da poi applicare alla particella
PVector gravity = new PVector(0, 0.1);
PVector wind = new PVector(0.01, 0);

//devo applicare l'attrito come forza
float coefAttrito = -0.01;
PVector friction;

void setup() {
   size(600,400);
   for(int i=0; i<p.length; i++){
     p[i] = new Particle(new PVector(0, 0), random(0.1, 4));
   }
}

void draw() {
  background(255);
  for(int i=0; i<p.length; i++){
    
    p[i].applyForce(gravity);
    p[i].applyForce(wind);
    
    //come applicare la forza di attrito
    friction = p[i].velocity.copy();
    friction.normalize();
    friction.mult(coefAttrito);
    p[i].applyForce(friction);
    
    p[i].Update();
    p[i].CheckBorders();
    p[i].Display();
  }
}