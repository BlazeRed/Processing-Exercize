int w = -80;
int h = 200;

void setup(){
  size(400, 400);

}

void draw(){
  background(255);
  noStroke();
  rectMode(CENTER);
  fill(124);
  rect(w, h, 80, 30); 
  fill(255);
  stroke(0);
  ellipse(w+20, h+16, 20, 20);
  ellipse(w-20, h+16, 20, 20);
  w = w +5;
  
  if(w > 480){
    w = -80;
  }
}