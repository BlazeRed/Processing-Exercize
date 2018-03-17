class Particle {
  
 PVector position; // PVector is the Processing class for 2/3 dimensional vectors
 PVector vel; //velocità della particella
 
 Particle( float xpos, float ypos, float xvel, float yvel ){
   position = new PVector( xpos, ypos); 
   vel = new  PVector(xvel, yvel);
 }
 
 public void Update() {
    position.add(vel);
    
    //se arrivo sui bordi inverto la componente
    if( (position.x >= width) || (position.x <= 0) ){ 
      vel.x *= -1;
    }else if( (position.y >= height) || (position.y <= 0) ){ 
      vel.y *= -1;
    }
    
 }
 
 public void Display() {
    ellipse(position.x, position.y, 20, 20);
  
 }
}