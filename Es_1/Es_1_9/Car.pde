class Car{
  private int x;
  private int y;
  private int col;
  private int vel;
  
  public Car(int x, int y, color col, int vel){
    this.x = x;
    this.y = y;
    this.col = col;
    this.vel = vel;
  }
  
  public void position(int x, int y){
    this.x = x;
    this.y = y;
  }
  
  public void draw(){
    noStroke();
    rectMode(CENTER);
    fill(col);
    rect(x, y, 80, 30); 
    fill(255);
    stroke(0);
    ellipse(x+20, y+16, 20, 20);
    ellipse(x-20, y+16, 20, 20);
    
    x = x+vel;
    
    if(x > (width+80)){
      x = -80;
    }
  }
}