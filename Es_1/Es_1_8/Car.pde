class Car{
  private int x;
  private int y;
  
  public Car(int x, int y){
    this.x = x;
    this.y = y;
  }
  
  public void position(int x, int y){
    this.x = x;
    this.y = y;
  }
  
  public void draw(){
    noStroke();
    rectMode(CENTER);
    fill(124);
    rect(x, y, 80, 30); 
    fill(255);
    stroke(0);
    ellipse(x+20, y+16, 20, 20);
    ellipse(x-20, y+16, 20, 20);
    
    x = x+6;
    
    if(x > (width+80)){
      x = -80;
    }
  }
}