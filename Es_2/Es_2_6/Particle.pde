class Particle {
  
 PVector position; // PVector is the Processing class for 2/3 dimensional vectors
 PVector vel; //velocità della particella
 PVector acc; //accelerazione della particella 
 int maxVel = 10; //rappresenta la velocità massima della particella
 int col; //colore della particella
 
 Particle( float xpos, float ypos, float xvel, float yvel, color col ){
   position = new PVector( xpos, ypos); 
   vel = new  PVector(xvel, yvel);
   acc = new PVector(1, 1);
   this.col = col;
 }
 
 public void Update() {
   setAcc(); 
   vel.add(acc);
   position.add(vel);
   vel.limit(maxVel); //limito al velocità
   Bounce();
 }
 
 
 //metodo per settare l'accelerazione
 public void setAcc(){
   PVector gravity = new PVector(0, 0.2);  
   acc = PVector.add(acc, gravity);
   acc.limit(0.5);
 }
 
 //metodo per gestire i "rimbalzi"
 public void Bounce(){
   //se oltrepassa il pavimento ritorna nella posizione originale
   if(position.y > height+20){ 
     position.y = height/2;
     position.x = width/2;
     //imposto una velocità casuale per l'effetto fontana
     vel.set(random(-2, +2), random(-2, +2));
   }
 }
 
 
 public void Display() {
   fill(col, 90);
   noStroke();
   ellipse(position.x, position.y, 20, 20);
  
 }
}