class Stars{
  private int myX, myY, mySize, myColor;
 
  public Stars(){
    myX = (int)(Math.random()*700);
    myY = (int)(Math.random()*700);
    mySize = (int)(Math.random()*3);
    int r = 197 + (int)(Math.random()*36);
    int g = 221 + (int)(Math.random()*36);
    int b = 229 + (int)(Math.random()*106);
    myColor = color(r, g, b);
  }
  public void show(){
    fill(myColor);
    stroke(myColor);
    ellipse(myX, myY, mySize, mySize);
  }
  public void move(){
    myX++;
    myY++;
    
    if(myY > height)
    {    
      myY = (int)(Math.random()*700)-700;    
    } 
    if(myX > width)
    {    
      myX = (int)(Math.random()*700)-700;    
    } 

  }
   
}
