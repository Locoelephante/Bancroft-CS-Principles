void setup()
{
  size(800,600);
  background(255);
}

void draw()
{
  int x=400;
  int y=550;
  strokeWeight(1);
  Back();
  DariusJr(x,y);
  grid();
  if (keyPressed)
  {
   if(key==UP)
   {
     y=y+5;
   }
  }
  if (keyPressed)
  {
     if(key==DOWN)
   {
     y=y-5;
   }
   
  }
  if (keyPressed)
  {
      if(key==LEFT)
   {
     x=x-5;
   }
   
  }
  if (keyPressed)
  {
    if(key==RIGHT)
   {
     x=x+5;
   }
   
  }



  else
  {
    
  }
}

void Back()
{
  fill(#069816); //green back piece
  rect(0,0,50,50);
  rect(150,0,500,50);
  rect(750,0,50,50);
  fill(#95FBFF); //portal
  rect(50,0,100,50);
  rect(650,0,100,50);
  fill(#6A6A6A);//grey
  rect(0,50,800,50);
  rect(0,250,800,50);
  fill(#0752F0);
  rect(0,100,800,100);
  fill(#6FFA51);
  rect(0,200,800,50);

}

void grid()
{
  strokeWeight(2);
  line(50,0,50,600);
  line(100,0,100,600);
  line(150,0,150,600);
  line(200,0,200,600);
  line(250,0,250,600);
  line(300,0,300,600);
  line(350,0,350,600);
  line(400,0,400,600);
  line(450,0,450,600);
  line(500,0,500,600);
  line(550,0,550,600);
  line(600,0,600,600);
  line(650,0,650,600);
  line(700,0,700,600);
  line(750,0,750,600);
  line(800,0,800,600);
  
  line(0,50,800,50);
  line(0,100,800,100);
  line(0,150,800,150);
  line(0,200,800,200);
  line(0,250,800,250);
  line(0,300,800,300);
  line(0,350,800,350);
  line(0,400,800,400);
  line(0,450,800,450);
  line(0,500,800,500);
  line(0,550,800,550);
  line(0,600,800,600);
}
void DariusJr(int x, int y)
  {
    fill(0);
    strokeWeight(1);
    arc(x,y,50,50,0,PI,PIE);
  }