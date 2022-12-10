//your variable declarations here
Stars[] sky = new Stars[500];
Spaceship rocket = new Spaceship();
ArrayList <Asteroid> rock = new ArrayList <Asteroid> ();
ArrayList <Bullet> boom = new ArrayList <Bullet> ();
ArrayList <Hearts> hearts = new ArrayList <Hearts> ();
boolean shoot = false;
boolean faster = false;
int lives = 3;
int shots = 0;
int x = 50;
int y = 50;

public void setup() 
{
  //your code here
  size(500,500);
  
  for(int i = 0; i < sky.length; i++){
    sky[i] = new Stars();
  }
  
  for(int i = 0; i <= 15 ; i++){
    rock.add(new Asteroid());
  }
  
  for(int i = 0; i < lives ; i++){
    hearts.add(new Hearts(x,y));
    x+=60;
    
  }

  rocket.setCenterX(100);
  rocket.setCenterY(100);
}

public void draw() 
{
  
  background(#7B8BD6);
  if(lives == 1){
    background(#AF6775);
  }
  
  //display stars in background
  for(int i = 0; i < sky.length; i++){
    sky[i].show();
    sky[i].move();
  }
  
  for(int i = 0; i < hearts.size(); i++){
    hearts.get(i).show();
  }
  
  //display asteroids
  for(int i = 0; i < rock.size(); i++){
    rock.get(i).move();
    rock.get(i).show();
  }
  
  rocket.move();
  rocket.show();
  
  for(int i = 0; i < boom.size(); i++){
    boom.get(i).move();
    boom.get(i).show();
  }
  
  //remove asteroids upon collision with rocket
  for(int i = 0; i < rock.size(); i++){
    float d = dist((float)rocket.getX(), (float)rocket.getY(), (float)rock.get(i).getX(), (float)rock.get(i).getY());
    if(d < 20){
      rock.remove(i);
      lives--;
      hearts.remove(lives);
    }
  }
 
  //keyboard controls
  if(keyPressed){
    if(key == 'd' || key == 'D'){
      rocket.turn(-5);
    }
    if(key == 'a' || key == 'A'){
      rocket.turn(5);
    }
    if(key == 'h' || key == 'H'){
      rocket.hyperspace();
    }
   
  }
  
  if(shoot == true){
    boom.add(new Bullet(rocket));
    shots++;
    shoot = false;
  }
  
  if(faster == true){
    rocket.accelerate(0.05);
   
  }
  if(faster == false){
     rocket.setXspeed(0.95 * rocket.getXspeed());
     rocket.setYspeed(0.95 * rocket.getYspeed());
    
  }

  //remove asteroid + bullet upon collision with each other
  for(int i = rock.size()-1; i >= 0; i--){
    for(int j = boom.size()-1; j >= 0; j--){
      float d = dist((float)boom.get(j).getX(), (float)boom.get(j).getY(), (float)rock.get(i).getX(), (float)rock.get(i).getY());
      if (d < 15)
        {
          boom.remove(j);
          rock.remove(i); 
          break;          
        }
    }
  }
  
  text("Lives: "+ lives, 50,30);
  text("Shots fired: "+ shots, 400,30);
  
  if(lives == 0){
    noStroke();
    fill(0);
    rect(0,0,700,700);
    fill(255);
    textSize(30);
    text("Game Over", 200,200);
    noLoop();
  }
  
  if(rock.size() == 0){
    noStroke();
    fill(#E0BBFA);
    rect(0,0,700,700);
    fill(#8E6CA5);
    textSize(20);
    text("How does it feel being an asteroid murderer? :/", 50,200);
    noLoop();
  }
    
}

public void keyPressed(){
  if(key == ' '){
    shoot = true;
    }
  if(key == 'w' || key == 'W'){
    faster = true;
  }
}

public void keyReleased(){
  if(key == 'w' || key == 'W'){
    faster = false;
  }
}
  
 
    
    
