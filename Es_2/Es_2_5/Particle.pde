class Particle {
  
 PVector position; // PVector is the Processing class for 2/3 dimensional vectors
 PVector vel; //velocità della particella
 PVector acc; //accelerazione della particella 
 int maxVel; //rappresenta la velocità massima della particella
 
 
 Particle( float xpos, float ypos, float xvel, float yvel ){
   position = new PVector( xpos, ypos); 
   vel = new  PVector(xvel, yvel);
   acc = new PVector(1, 1);
   maxVel = 5;
 }
 
 public void Update() {
   
   //imposto l'accelerazione come la differenza tra la posizione del mouse 
   //e della particella
   setAcc(); 
   
   vel.add(acc);
   position.add(vel);
   vel.limit(maxVel); //limito al velocità
    
   //gestione del rimbalzo
   Bounce();
 }
 
 public void setAcc(){
   //sottrazione tra posizione particella e mouse 
   PVector mousePos = new PVector(mouseX, mouseY);
   acc = PVector.sub(mousePos, position);
   acc.limit(0.2);
 }
 
 public void Bounce(){
   //RIMBALZO se arrivo sui bordi inverto la componente
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