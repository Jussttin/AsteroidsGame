Spaceship rocket = new Spaceship();
Star[] space = new Star[300];
Asteroid asteroid = new Asteroid();
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
double randomX, randomY, direction;
public void setup(){
  size(400,400);
  background(0);
  for(int i = 0; i < space.length; i++){
    space[i] = new Star();
  }
  for(int i = 0; i < 11; i++){
    rock.add(i, new Asteroid());
  }
}
public void draw(){
  background(0);
  for(int i = 0; i < space.length; i++){
    space[i].show();
  }
  for(int i = 0; i < rock.size(); i++){
  (rock.get(i)).move();
  (rock.get(i)).show();
  if(dist((float)rocket.getX(), (float)rocket.getY(), (float)rock.get(i).rockX(), (float)rock.get(i).rockY()) <= 15){
    rock.remove(i);
  }
  }
  rocket.move();
  rocket.show();
}
public void keyPressed(){
   //basic movement
  if(key == 'w'){
    rocket.accelerate(0.2);
  }
   if(key == 's'){
    rocket.accelerate(-0.2);
  }
   if(key == 'd'){
    rocket.turn(5);
  }
   if(key == 'a'){
    rocket.turn(-5);
  }
    //hyperspace
    if(key == 'e'){
    randomX = Math.random() * 401;
    randomY = Math.random() * 401;
    direction = Math.random() * 361;
    rocket.accelerate(0);
    rocket.speed(0, 0);
    rocket.coords(randomX, randomY);
    rocket.angle(direction);
    }
}
public void keyReleased(){
  if(key == 'w' || key == 's'){
    rocket.accelerate(0);
    rocket.speed(0, 0);
  }
}
