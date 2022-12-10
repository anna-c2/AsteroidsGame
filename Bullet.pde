class Bullet extends Floater{
  public Bullet(Spaceship rocket){
    myCenterX = rocket.getX();
    myCenterY = rocket.getY();
    myXspeed = rocket.getXspeed();
    myYspeed = rocket.getYspeed();
    myPointDirection = rocket.getPointDirection();
    accelerate(6.0);
  }
  public void show(){
    ellipse((float)getX(), (float)getY(), 5,5);
  }
  public void move(){
    myCenterX += myXspeed;    
    myCenterY += myYspeed;
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
  
}
