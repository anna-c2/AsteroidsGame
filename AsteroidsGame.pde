//your variable declarations here
Spaceship rocket = new Spaceship();
ArrayList <Asteroid> rock = new ArrayList <Asteroid> ();
Stars[] sky = new Stars[500];
boolean aPressed = false;
boolean wPressed = false;
boolean dPressed = false;
boolean hPressed = false;

public void setup() 
{
  //your code here
  size(500,500);
  for(int i = 0; i < sky.length; i++){
    sky[i] = new Stars();
  }
  
  for(int i = 0; i <= 10 ; i++){
    rock.add(new Asteroid());
  }
  
}
public void draw() 
{
  background(0);
  
  for(int i = 0; i < sky.length; i++){
    sky[i].show();
  }
  
  for(int i = 0; i < rock.size(); i++){
    rock.get(i).move();
    rock.get(i).show();
    float d = dist((float)rocket.getX(), (float)rocket.getY(), (float)rock.get(i).getX(), (float)rock.get(i).getY());
    if(d < 20){
      rock.remove(i);
    }
  }
  
  if(aPressed == true){
    rocket.turn(-10);
  }
  if(wPressed == true){
    rocket.accelerate(0.1);
  }
  if(dPressed == true){
    rocket.turn(10);
  }
  if(hPressed == true){
    rocket.hyperspace();
  }
    
  rocket.move();
  rocket.show();
}

public void keyPressed(){
  if(key == 'a' || key == 'A'){
      aPressed = true;
    }
    if(key == 'd' || key == 'D'){
      dPressed = true;
    }
    if(key == 'w' || key == 'W'){
      wPressed = true;
    }
    if(key == 'h' || key == 'H'){
      hPressed = true;
    }
}

public void keyReleased(){
  if(key == 'a' || key == 'A'){
      aPressed = false;
    }
    if(key == 'd' || key == 'D'){
      dPressed = false;
    }
    if(key == 'w' || key == 'W'){
      wPressed = false;
    }
    if(key == 'h' || key == 'H'){
      hPressed = false;
    }
}
