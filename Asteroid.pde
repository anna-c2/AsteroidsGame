class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    corners = 6;
    xCorners = new int[] {-20,-10,10,20,20,10,-10,-20};
    yCorners = new int[] {10,20,20,10,-10,-20,-20,10};
    myColor = color(#B4B8B9);
    rotSpeed = (int)(Math.random()*10)-5;
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myXspeed = (Math.random()-0.3);
    myYspeed = (Math.random()-0.3);
    myPointDirection = (int)(Math.random()*360);
    
  }
 
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  
  public double getX() {
    return myCenterX;
  }

  public double getY() {
    return myCenterY;
  }
}
