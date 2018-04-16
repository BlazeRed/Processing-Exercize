
void setup(){
  size(360, 100);
}

void draw(){
  float s = map(mouseX, 0, width, 100, 0);
  float b = map(mouseX, 0, width, 100, 0);
  
  colorMode(HSB, 360, 100, 100);
  for(int i = 0; i<360; i++){
    noStroke();
    fill(i, s, b);
    rect(i, 0, 1, height);
    
    
  }

}