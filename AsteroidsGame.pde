//your variable declarations here
Spaceship rocket = new Spaceship();
Stars[] sky = new Stars[500];
public void setup() 
{
  //your code here
  size(500,500);
  for(int i = 0; i < sky.length; i++){
    sky[i] = new Stars();
  }
}
public void draw() 
{
  background(0);
  
  for(int i = 0; i < sky.length; i++){
    sky[i].show();
  }
  
  if(keyPressed){
    if(key == 'a' || key == 'A'){
      rocket.turn(-10);
    }
    if(key == 'd' || key == 'D'){
      rocket.turn(10);
    }
    if(key == 'w' || key == 'W'){
      rocket.accelerate(0.1);
    }
    if(key == 'h' || key == 'H'){
      rocket.hyperspace();
    }
  }
  rocket.move();
  rocket.show();
}
