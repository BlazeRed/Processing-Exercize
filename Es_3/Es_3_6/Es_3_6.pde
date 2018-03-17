Particle p[] = new Particle [3];

void setup() {
   size(600,400);
   for(int i=0; i<p.length; i++){
     p[i] = new Particle( new PVector( random(width), random(height)), 10);
   }
   
}

void draw() {
  background(255);
  for(int i=0; i<p.length; i++){
     p[i].Update();
     p[i].CheckBorders();
     p[i].Display();
     for(int j=0; j<p.length; j++){
       if(i != j && p[i].intersect(p[j]) ){
         p[i].repulse();
         p[j].repulse();
        }
     }
    }
  }