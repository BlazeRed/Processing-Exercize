void setup(){
  size(600, 300);
  
}

float Gr = 0;
float Gg = 0;
float Gb = 0;

void draw(){
  rectMode(CORNER);
  //rettangolo grande sx
  noStroke();
  fill(Gr, Gg, Gb);
  rect(0, 0, height, height);
  //rettangolo grande dx
  noStroke();
  fill(255, 255, 255);
  rect(width/2, 0, height, height);
  //rettangolo piccolo sx
  noStroke();
  fill(38, 38, 38);
  rectMode(CENTER);
  rect(150, 150, 50, 50);
  //rettangolo piccolo dx
  noStroke();
  fill(143, 143, 143);
  rect(450, 150, 50, 50);
}

void mousePressed(){
  if( (Gr == 255) && (Gg == 255) && (Gb == 255) ){
    Gr = 0;
    Gg = 0;
    Gb = 0;
  }else{
    Gr = 255;
    Gg = 255;
    Gb = 255;
  }
  
}