class Asteroid extends Floater{
  public Asteroid(int x, int y){
    myColor = 256;
    corners = 8;
    myCenterX = x;
    myCenterY = y;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = x+10;
    xCorners[1] = x+30;
    xCorners[2] = x+30;
    xCorners[3] = x+10;
    xCorners[4] = x-10;
    xCorners[5] = x-30;
    xCorners[6] = x-30;
    xCorners[7] = x-10;
    yCorners[0] = y+30;
    yCorners[1] = y+10;
    yCorners[2] = y-10;
    yCorners[3] = y-30;
    yCorners[4] = y-30;
    yCorners[5] = y-10;
    yCorners[6] = y+10;
    yCorners[7] = y+30;
  }
  public void move(){
    myCenterX += 5;    
    myCenterY += 5;
    turn(Math.cos(Math.PI));
    if(myCenterX >width){     
      myCenterX = 0;    
    }else if (myCenterX<0){     
      myCenterX = width;    
    }    
    if(myCenterY >height){    
      myCenterY = 0;    
    }else if (myCenterY < 0){     
      myCenterY = height;    
    } 
  }
   public double getX(){
     return myCenterX;
   }
   public double getY(){
     return myCenterY;
   }
}
