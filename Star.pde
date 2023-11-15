class Star{
  private int myX, myY;
  public Star(){
    myX = (int)(Math.random()*1000);
    myY = (int)(Math.random()*1000);
  }
  public void show(){
    fill((int)(Math.random()*200)+55);
    ellipse(myX, myY, 10, 10);
  }
}
