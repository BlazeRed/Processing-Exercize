float upr, upg, upb;
float dor, dog, dob;
boolean p;
void setup(){
  size(400, 800);
  p = false;
  upr = 74; upg = 29; upb = 52;
  dor = 61; dog = 35; dob = 20;
}

void draw(){
  
  noStroke();
  rectMode(CORNER);
  fill(upr, upg, upb);
  rect(0, 0, 400, 400);
  fill(dor, dog, dob);
  rect(0, 400, 400, 400);
  
  rectMode(CENTER);
  fill(67, 33, 34);
  rect(200, 200, 50, 50);
  rect(200, 600, 50, 50);
}

void mousePressed(){
  if(mousePressed && p == false){
    upr = 74; upg = 29; upb = 52;
    dor = 61; dog = 35; dob = 20;
    p = true;
  }else if(mousePressed && p == true){
    upr = upg = upb = 255;
    dor = dog = dob = 255;
    p = false;
  }  
}