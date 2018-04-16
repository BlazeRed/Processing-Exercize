float col = 200;
void setup(){
  size(400, 400);
}

void draw(){
  float col = map(mouseX, 0, width, 110, 223);
  background(col, col, col);
  noStroke();
  fill(211, 211, 211);
  ellipse(width/2, height/2, 150, 150);
}