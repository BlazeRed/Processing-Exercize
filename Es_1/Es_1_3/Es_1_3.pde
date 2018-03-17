void setup(){
  size(400, 400);
}

void draw(){
  noStroke();
  rectMode(CENTER);
  fill(124);
  rect(width/2, height/2, 80, 30); 
  fill(255);
  stroke(0);
  ellipse(width/2+20, height/2+16, 20, 20);
  ellipse(width/2-20, height/2+16, 20, 20);
}