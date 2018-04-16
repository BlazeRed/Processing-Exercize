
float angle = 45;
float x, y;

void setup(){
  size(600, 600);
  rectMode(CENTER);
  x = y = random(300);
  
}


void draw(){
  
  background(0);
  
  if(keyPressed){
    if(keyCode == LEFT){
      angle = angle - 0.05;
    }else if(keyCode == RIGHT){
      angle = angle + 0.05;    
    }
    if(keyCode == UP){
      y = y-1;
    }
    if(keyCode == DOWN){
      y = y+1;
    }
  }  
  
  pushMatrix();
  translate(x, y);
  rotate(angle);
  fill(250, 50, 50);
  rect(0, 0, 200, 100);
  popMatrix();
  
  
  translate(300, 300);
  rotate(-angle);
  fill(50, 50, 250);
  rect(0, 0, 200, 100);
  

  
}