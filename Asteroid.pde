class Asteroid extends Floater{
  private int speed;
  public Asteroid() {
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 12;
    yCorners[0] = 0;
    xCorners[1] = (int)((Math.random() * 7) + 5);
    yCorners[1] = 10;
    xCorners[2] = (int)((Math.random() * 7) + 5);
    yCorners[2] = -8;
    xCorners[3] = (int)((Math.random() * 8) + 6);
    yCorners[3] = -8;
    xCorners[4] = -5;
    yCorners[4] = 0;
    xCorners[5] = (int)((Math.random() * 8) + 6);
    yCorners[5] = 8;
    speed = (int)(Math.random() * 6);
    myCenterX = (int)(Math.random() * 401);
    myCenterY = (int)(Math.random() * 401);
    myColor = 200;
    myXspeed = (int)(Math.random() * 4);
    myYspeed = (int)(Math.random() * 4);
  }
  public void move(){
    turn(speed);
    super.move();
  }
  public double rockX(){
    return myCenterX;
  }
  public double rockY(){
    return myCenterY;
  }
}
