class Hearts{
  private int myColor, myX, myY;
  public Hearts(int x, int y){
    myX = x;
    myY = y;
    myColor = color(255,124,187);
  }
  public void show(){
    fill(myColor);
    noStroke();
    beginShape();
    curveVertex(myX, myY+90);
    curveVertex(myX, myY+24);
    curveVertex(myX-24, myY);
    curveVertex(myX-15, myY-15);
    curveVertex(myX, myY-10);
    curveVertex(myX, myY+30);
    endShape();
    beginShape();
    curveVertex(myX, myY+30);
    curveVertex(myX, myY-10);
    curveVertex(myX+15, myY-15);
    curveVertex(myX+24, myY);
    curveVertex(myX, myY+24);
    curveVertex(myX, myY+90);
    endShape();
  }
}
