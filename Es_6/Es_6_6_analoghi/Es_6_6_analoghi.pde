float hue;
void setup(){
  size(600, 200);
  hue = random(360);
}

void draw(){
  noStroke();
  colorMode(HSB, 360, 100, 100);
  fill(hue-30, 70, 100);
  rect(0, 0, 200, 200);
  fill(hue, 70, 100);
  rect(200, 0, 200, 200);
  fill(hue+30, 70, 100);
  rect(400, 0, 200, 200);
}


void mousePressed(){
  hue = random(360);
}