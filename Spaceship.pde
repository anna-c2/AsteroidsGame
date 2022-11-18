class Spaceship extends Floater  
{   
  //your code here
  public Spaceship(){
    corners = 3;
    xCorners = new int[]{-40,80,-40,-10};
    yCorners = new int[]{-40,0,40,0};
    myColor = color(255);
  }
 public void hyperspace(){
   rocket.setXspeed(0);
   rocket.setYspeed(0);
   rocket.setCenterY((int)(Math.random()*500));
   rocket.setCenterX((int)(Math.random()*500));
   rocket.setPointDirection((int)(Math.random()*360));
 }
}
