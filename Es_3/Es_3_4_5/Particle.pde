class Particle {
 
  PVector position;
  PVector velocity = new PVector(0.0, 0.0);
  PVector acceleration = new PVector(random(1), 0.0);
  float diameter;
  float mass;
  float col;
  
  Particle () {
   position = new PVector (random(width), random(height));
   mass = random(0.1, 4);
   diameter = mass * 10;
   col = random(255);
    
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
    noStroke();
    fill(150, 150);
    ellipse(position.x,position.y,diameter,diameter);
    
  }
  
}