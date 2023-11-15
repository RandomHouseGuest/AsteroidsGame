class Spaceship extends Floater{
  public Spaceship(){
    myColor = 256;
    corners = 9;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 2;
    xCorners[1] = 22;
    xCorners[2] = 22;
    xCorners[3] = 14;
    xCorners[4] = 14;
    xCorners[5] = 22;
    xCorners[6] = 14;
    xCorners[7] = 2;
    xCorners[8] = 2;
    yCorners[0] = 2;
    yCorners[1] = 2;
    yCorners[2] = 13;
    yCorners[3] = 13;
    yCorners[4] = 18;
    yCorners[5] = 18;
    yCorners[6] = 25;
    yCorners[7] = 25;
    yCorners[8] = 2;
   }
   public void stopship(){
     myXspeed = 0;
     myYspeed = 0;
   }
   public void hyperspace(){
     myCenterX = (int)(Math.random()*901)+50;
     myCenterY = (int)(Math.random()*901)+50;
     myXspeed = 0;
     myYspeed = 0;
     myPointDirection = (int)(Math.random()*360)+1;
   }
}
