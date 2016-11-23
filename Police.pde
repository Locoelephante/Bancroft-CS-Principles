public class PoliceCar
{
  int dX = 0;
  int dY = 0;
  public PoliceCar(int x1,int y1)
  {
    fill(255,0,0);
    arc(x1,y1,50,50,PI,TWO_PI,PIE);
    fill(0,0,255);
    arc(x1,y1,50,50,0,PI,PIE);
  }
}