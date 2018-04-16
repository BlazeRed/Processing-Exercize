class Car{
  int x, y, xt, yt;
  float angle = random(0, 2*PI);
  float scaleFactor = random(0.5, 2);
  
  public Car(){
    this.x = 0; //(int)random(width);
    this.y = 0; //(int)random(height);
    xt = (int)random(width);
    yt = (int)random(height);
  }
  
  public void draw(){
    noStroke();
    
    //salva il 0,0
    pushMatrix();
    translate(xt, yt);
    scale(scaleFactor);
    rotate(angle);
    
    rectMode(CENTER);
    fill(124);
    rect(x, y, 80, 30); 
    fill(255);
    stroke(0);
    
    pushMatrix();
    translate(20, 16);
    ellipse(x, y, 20, 20);
    popMatrix();
    
    pushMatrix();
    translate(-20, 16);
    ellipse(x, y, 20, 20);
    popMatrix();
    
    angle = angle + 0.05;
    //ripristino il primo push
    popMatrix();
    
  }
}