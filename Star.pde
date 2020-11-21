class Star //note that this class does NOT extend Floater
{
  private int x, y, shade, shadeR, shadeB, shadeG;
  public Star(){
  x = (int)(Math.random() * 401);
  y = (int)(Math.random() * 401);
  shadeR = (int)(Math.random() * 256);
  shadeB = (int)(Math.random() * 256);
  shadeG = (int)(Math.random() * 256);
  shade = color(shadeR, shadeB, shadeG);
  }
  public void show(){
    ellipse(x,y,1,1);
    fill(shade);
  }
}
