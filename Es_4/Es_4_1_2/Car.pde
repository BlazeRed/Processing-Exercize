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
    //salvo la posizione 0,0
    pushMatrix();
    rectMode(CENTER);
    fill(124);
    rect(x, y, 80, 30); 
    fill(255);
    stroke(0);
    //traslo lo spazio per poaizionare la ruota
    translate(20, 16);
    ellipse(x, y, 20, 20);
    //recupero la posizione precesente (0,0)
    popMatrix();
    
    //salvo dinuovo la posizione (0,0) attuale
    pushMatrix();
    translate(-20, 16);
    ellipse(x, y, 20, 20);
    //dopo la traslazione la rimetto a 0,0
    popMatrix();
  }
}