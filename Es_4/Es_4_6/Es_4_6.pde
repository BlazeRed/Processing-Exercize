Ship s = new Ship();

void setup(){
  size(600, 600);
}

void draw(){
  background(0);
  s.display();
  if(keyPressed){
    s.move();
    if(keyCode == UP){
      PVector force = new PVector(0, -5);
      force.rotate(radians(s.angle));
      s.applyForce(force);
    }
    s.update();
  }
  
  
}