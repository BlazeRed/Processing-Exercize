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
    
    pushMatrix();
    rectMode(CENTER);
    fill(124);
    rect(x, y, 80, 30);

    fill(255);
    stroke(0);
    translate(20, 16);
    ellipse(x, y, 20, 20);
    popMatrix();
    
    pushMatrix();
    translate(-20, 16);
    ellipse(x, y, 20, 20);
    popMatrix();
    //translate che sposta lo spazio in continuazione (mai pop e push)
    translate(100, 0);
    
  }
}