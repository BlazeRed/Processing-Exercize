class Particle {
 
  PVector position;
  PVector velocity = new PVector(0.0, 0.0);
  PVector acceleration = new PVector(random(2), random(2));
  float diameter, ray;
  float mass;
  float r, g, b;
  
  Particle () {
   position = new PVector (random(width), random(height));
   mass = 5;
   diameter = 10*mass;
   ray = diameter/2;
    
  }
  
  void changeColor(){ 
   r = random(255);
   g = random(255);
   b = random(255);
  }
  
  void Update() {
    velocity.add(acceleration);
    position.add(velocity); 
    acceleration.mult(0);
  }
  
  boolean CheckBorders() {
    boolean check = false;
    if (position.x > width+ray) {
      check = true;
    } else if (position.x < -ray) {
      check = true;
    }
    if ( position.y > height+ray) {
      check = true;
    } else if(position.y < -ray){
      check = true;
    }
    return check;
  }
  
  //procedura per verificare se due particelle si intersecano
  boolean intersect(Particle p){
    float dist = dist(this.position.x, this.position.y, p.position.x, p.position.y);
    if(dist <= (this.ray + p.ray) ){
      return true;
    }else{
      return false;
    }
  }
  
  void repulse(){
    velocity.mult(-1);
  }
  
  void applyForce(PVector force) {
   PVector a = PVector.div(force,mass);
   acceleration.add( a );
  }
  
  void Display() {
    stroke(0);
    strokeWeight(2);
    fill(r, g, b, 128);
    ellipse(position.x,position.y,diameter,diameter);
    
  }
  
}