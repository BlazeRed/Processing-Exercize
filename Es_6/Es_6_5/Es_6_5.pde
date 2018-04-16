
void setup(){
  size(600, 600);
}

void draw(){
  float wall = map(mouseY, 0, height, 0, 360);
  
  colorMode(HSB, 360, 100, 100);
  
  background(wall, 80, 80);
  rectMode(CENTER);
  noStroke();
  if(wall < 180){
    fill(wall+180, 80, 80);
  }else if(wall > 180){
    fill(wall-180, 80, 80);
  }
  rect(300, 300, 200, 200);

}