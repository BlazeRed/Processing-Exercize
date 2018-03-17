class Attractor{
  float diameter;
  float mass;
  PVector position;
  
  Attractor(){
    mass = 5;
    diameter = 10 * mass;
    position = new PVector(width/2, height/2);
  }
  
  PVector attract( Particle p ){
    //distanza tra due vettori
    PVector force = PVector.sub(position, p.position);
    float d = force.mag();
    d = constrain(d, 25, 600);
    float G = 70;
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

  void Display(){
      noStroke();
      fill(255, 0, 128, 128);
      ellipse(position.x, position.y, diameter, diameter); 
  }
}