class Particle {
 
  PVector position;
  PVector velocity = new PVector(0.0, 0.0);
  PVector acceleration = new PVector(random(1), 0.0);
  float diameter;
  float mass;
  float col;
  float radius;
  
  Particle () {
   position = new PVector (random(width), random(height));
   mass = 4;
   diameter = mass * 10;
   col = random(255);
   radius = diameter/2;
    
  }
  
  void Update() {
    velocity.add(acceleration);
    position.add(velocity); 
    acceleration.mult(0);
  }
  
  void CheckBorders() {
    if (position.x > width-radius) {
      position.x = width-radius;
      velocity.x *= -1;
    } else if (position.x < radius) {
      velocity.x *= -1;
      position.x = radius;
    }

    if (position.y > height-radius) {
      velocity.y *= -1;
      position.y = height-radius;
    }else if(position.y < radius){
      velocity.y *= -1;
      position.y = radius;
    }
  }
  
  void applyForce(PVector force) {
   PVector a = PVector.div(force,mass);
   acceleration.add( a );
  }
  
  PVector attract( Particle p ){
    //distanza tra due vettori
    PVector force = PVector.sub(position, p.position);
    float d = force.mag();
    d = constrain(d, 1, 150);
    float G = 5;
    //force già è la sottrazione tra le distaze e quindi uso normalize per ottenere
    //il vettore di lunghezza unitaria che punta da un oggetto a un altro
    force.normalize();
    //calcolo la dimensione della forza
    float strength = (G * mass * p.mass) / (d * d);
    //do la direzione alla forza
    force.mult(strength);
    //repulsione
    if(d < 50){
      force.mult(-10);
    }
    return force;
  }
  
 void Display() {
    noStroke();
    fill(150, 150);
    ellipse(position.x,position.y,diameter,diameter);
    
  }
  
}