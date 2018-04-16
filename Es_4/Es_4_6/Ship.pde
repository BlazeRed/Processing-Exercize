class Ship{
  PVector head;
  PVector center;
  PVector sideLeft;
  PVector sideRight;
  float angle;
  float mass;
  
  PVector velocity, acceleration;
  
  
  public Ship(){
    center = new PVector(width/2, height/2);
    head = new PVector(center.x, center.y-15);
    sideLeft = new PVector(center.x-10,center.y+15);
    sideRight = new PVector(center.x+10, center.y+15);
    angle = 0;
    velocity = new PVector(0.0, 0.0);
    acceleration = new PVector(0.0, 0.0);
    mass = 1;
  }
  
  public void update(){
    velocity.add(acceleration);
    center.add (velocity);
    acceleration.mult(0);
  }
  
  void applyForce(PVector force) {
   PVector a = PVector.div(force,mass);
   acceleration.add( a );
  }
  
  public void move(){   
    if(keyCode == LEFT){
      angle = angle -1;
    }else if(keyCode == RIGHT){
      angle = angle + 1;    
    } 
  }
  
  public void display(){
    pushMatrix();
    translate(center.x, center.y);
    rotate(radians(angle));
    noFill();
    stroke(255);
    triangle(head.x, head.y, sideLeft.x, sideLeft.y, sideRight.x, sideRight.y); 
    popMatrix();
  }
  
}