class Particle {
  
 PVector position; // PVector is the Processing class for 2/3 dimensional vectors
 PVector vel; //velocità della particella
 
 Particle( float xpos, float ypos, float xvel, float yvel ){
   position = new PVector( xpos, ypos); 
   vel = new  PVector(xvel, yvel);
 }
 
 public void Update() {
    position.add(vel);
 }
 
 public void Display() {
    ellipse(position.x, position.y, 20, 20);
  
 }
}