class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    corners = 6;
    xCorners = new int[] {-11, 7, 13, 6, -11, -5};
    yCorners = new int[] {-8, -8, 0, 10, 8, 0};
    myColor = color(255, 230, 3);
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
