class Particle {
 
  PVector position;
  PVector velocity = new PVector(0.0, 0.0);
  PVector acceleration = new PVector(0.0, 0.0);
  float diameter;
  float mass;
  
  Particle (PVector position, float mass, float diameter) {
   this.position = position;
   this.mass = mass;
   this.diameter = diameter;
    
  }
  
  void Update() {
    velocity.add(acceleration);
    position.add(velocity); 
    acceleration.mult(0);
  }
  
  void CheckBorders() {
    if (position.x > width) {
      position.x = width;
      velocity.x *= -1;
    } else if (position.x < 0) {
      velocity.x *= -1;
      position.x = 0;
    }

    if (position.y > height) {
      velocity.y *= -1;
      position.y = height;
    }
  }
  
  void applyForce(PVector force) {
   PVector a = PVector.div(force,mass);
   acceleration.add( a );
  }
  
  void Display() {
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(position.x,position.y,diameter,diameter);
    
  }
  
}