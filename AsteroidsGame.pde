//your variable declarations here
Spaceship rocket = new Spaceship();
//ArrayList <Asteroid> rock = new ArrayList <Asteroid> ();
Stars[] sky = new Stars[500];

public void setup() 
{
  //your code here
  size(500,500);
  for(int i = 0; i < sky.length; i++){
    sky[i] = new Stars();
  }
  
  //for(int i = 0; i <= 10 ; i++){
  //  rock.add(new Asteroid());
 // }
  
}
public void draw() 
{
  background(0);
  
  for(int i = 0; i < sky.length; i++){
    sky[i].show();
  }
  
 /* for(int i = 0; i < rock.size(); i++){
    rock.get(i).move();
    rock.get(i).show();
    float d = dist((float)rocket.getX(), (float)rocket.getY(), (float)rock.get(i).getX(), (float)rock.get(i).getY());
    if(d < 20){
      rock.remove(i);
    }
  }*/
  
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
    
  rocket.move();
  rocket.show();
  
}
