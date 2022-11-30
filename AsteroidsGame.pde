//your variable declarations here
Spaceship rocket = new Spaceship();
ArrayList <Asteroid> rock = new ArrayList <Asteroid> ();
Stars[] sky = new Stars[500];
public void setup() 
{
  //your code here
  size(500,500);
  for(int i = 0; i < sky.length; i++){
    sky[i] = new Stars();
  }
  
  //for(int i = 0; i < rock.size(); i++){
  //  rock(i) = new Asteroid();
  //}
  
}
public void draw() 
{
  background(0);
  
  for(int i = 0; i < sky.length; i++){
    sky[i].show();
  }
  
  for(int i = 0; i < rock.size(); i++){
    rock[i].show();
    rock[i].move();
  }
  
  for(int i = 0; i < rock.size(); i++){
    rock.get(i).move();
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
