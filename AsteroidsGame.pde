//your variable declarations here
Stars[] sky = new Stars[500];
Spaceship rocket = new Spaceship();
ArrayList <Asteroid> rock = new ArrayList <Asteroid> ();
//Bullet boom = new Bullet(rocket);
Asteroid sue = new Asteroid();
Asteroid bob = new Asteroid();

ArrayList <Bullet> boom = new ArrayList <Bullet> ();
boolean shoot = false;

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
  
  //display stars in background
  for(int i = 0; i < sky.length; i++){
    sky[i].show();
  }
  
  //display asteroids + remove asteroid if touches spaceship
  for(int i = 0; i < rock.size(); i++){
    rock.get(i).move();
    rock.get(i).show();
  }
  
  for(int i = 0; i < rock.size(); i++){
    float d = dist((float)rocket.getX(), (float)rocket.getY(), (float)rock.get(i).getX(), (float)rock.get(i).getY());
    if(d < 15){
      rock.remove(i);
    }
  
    for(int j = 0; j < boom.size(); j++){
      float u = dist((float)boom.get(j).getX(), (float)boom.get(j).getY(), (float)rock.get(i).getX(), (float)rock.get(i).getY());
      if (u < 15)
        {
          
          boom.remove(j);
          rock.remove(i);
          if(i>1){
            i--;
          }
          if(j > 1){
            j--;
          }
          break;
          
        }
    }
  }
  
  if(keyPressed){
    if(key == 'a' || key == 'A'){
      rocket.turn(-5);
    }
    if(key == 'd' || key == 'D'){
      rocket.turn(5);
    }
    if(key == 'w' || key == 'W'){
      rocket.accelerate(0.05);
    }
    if(key == 'h' || key == 'H'){
      rocket.hyperspace();
    }
    if(key == ' '){
      boom.add(new Bullet(rocket));
    }
    
  }
  rocket.move();
  rocket.show();

  
  for(int i = 0; i < boom.size(); i++){
    boom.get(i).move();
    boom.get(i).show();
  }
  
    //for(int i = 0; i < boom.size(); i++){
    //  for(int j = 0; j < rock.size(); j++){
    //    float d = dist((float)boom.get(i).getX(), (float)boom.get(i).getY(), (float)rock.get(j).getX(), (float)rock.get(j).getY());
    //    if (d < 15)
    //    {
    //      boom.remove(i);
    //      rock.remove(j);
    //      //j--;
    //      //i--;
    //      break;
    //    }
    //  }
    //}
   
}
 
    
