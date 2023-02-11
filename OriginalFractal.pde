public void setup()
{
  size (500,500);
  ellipseMode(CENTER);
  
}
  public void draw()
  {
    background (255);
    stroke(2);
    myFractal(250,250,480);
    
  }
  
  public void myFractal(int x, int y, int siz)
  {
     fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    ellipse(x,y,siz,siz);
    //ellipse(x*2, y*2,siz,siz);
    //ellipse(x/2, y/2,siz,siz);
    //ellipse(x*3, y*3,siz,siz);
   // ellipse(x/3, y/3,siz,siz);
    //ellipse(x*4, y*4,siz,siz);
    //ellipse(x/4, y/4,siz,siz);
    if(siz>1)
    {
      myFractal(x-siz/2,y,siz/2);
      myFractal(x+siz/2,y,siz/2);
    }
  }
