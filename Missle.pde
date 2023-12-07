class Missle extends Floater{
  public Missle(Spaceship theShip){
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.Xspeed();
    myYspeed = theShip.Yspeed();
    myPointDirection = theShip.direction();
    myColor = color(0, 0, 255);
    accelerate(0.6);
  }
  public void show(){
    ellipse((float)myCenterX, (float)myCenterY, 20, 20);
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
