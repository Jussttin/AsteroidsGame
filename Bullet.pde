class Bullet extends Floater{
  public Bullet(Spaceship Rocket){
    myCenterX = Rocket.getX();
    myCenterY = Rocket.getY();
    myXspeed = Rocket.vroomX();
    myYspeed = Rocket.vroomY();
    //Need to add getters for myXspeed and myYspeed
    myPointDirection = Rocket.direction();
    accelerate(1.5);
  }
  public void show(){
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }
  public double bulletX(){
    return myCenterX;
  }
  public double bulletY(){
    return myCenterY;
  }
}
