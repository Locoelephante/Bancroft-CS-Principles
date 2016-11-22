 int x = 425;
  int y = 580;
  int d = 50;
  
void setup()
{
  size(800,600);
  background(255);
}

void draw()
{
  strokeWeight(1);
  Back();
  grid();
  PoliceCar auto1 = new PoliceCar(775,75);
  PoliceCar auto2 = new PoliceCar(775,275);
  PoliceCar auto3 = new PoliceCar(775,375);
  
  //The Controls
  if (keyPressed)
  {
   if(key=='w'||key=='W')
   {
     y=y-d;
   }
  }
  if (keyPressed)
  {
     if(key=='s'||key=='S')
   {
     y=y+d;
   }
   
  }
  if (keyPressed)
  {
      if(key=='a'||key=='A')
   {
     x=x-d;
   }
   
  }
  if (keyPressed)
  {
    if(key=='d'||key=='D')
   {
     x=x+d;
   }
    
  }
  else
  {
    d=d;
  }
  
  //The next peices are for the bondaries of DariusJr
   if(y>=height) 
  {
    y=580;
  }
 if(x>=width) 
  {
    x=25;
  }
 if(x<=width-800) 
  {
    x=780;
  }
  if((x>=width-750 && y<=height-600) && (x<=width-650 && y<=height-600))
  {
   y=580; 
  }
 if((x>=width-150 && y<=height-600) && (x<=width-50 && y<=height-600))
  {
   y=580; 
  }
 if((x>=width-650 && y<=height-600) && (x<=width-150 && y<=height-600))
  {
   y=30; 
  }
  if((x>=width-50 && y<=height-600) && (x<=width && y<=height-600))
  {
   y=30; 
  }
  if((x>=width-800 && y<=height-600) && (x<=width-750 && y<=height-600))
  {
   y=30; 
  }
  //lose at the lake
  
//DariusJr
  DariusJr(x,y);
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
  rect(0,350,800,50);
  fill(#0752F0);//lake
  rect(0,100,800,100); 
  rect(0,400,800,100);
  fill(#6FFA51); //light green
  rect(0,200,800,50);
  rect(0,300,800,50);
  rect(0,500,800,100);
 
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
    int sizeX = 5;
    int sizeY = 5;
    
    fill(#FF8408);
    strokeWeight(1);
    ellipse(x,y,sizeX+15,sizeY+20);
    fill(#DBA773);
    ellipse(x,y-15,sizeX+10,sizeY+10);
    ellipse(x-14,y,sizeX+5,sizeY);
    ellipse(x+14,y,sizeX+5,sizeY);
    fill(0);
    ellipse(x-5,y+14,sizeX,sizeY+5);
    ellipse(x+5,y+14,sizeX,sizeY+5);
    fill(0);
    rect(x-7.5,y-17.5,sizeX+10,sizeY);
    ellipse(x,y,sizeX+5,sizeY+5);
    fill(#FF8408);
    ellipse(x,y,sizeX+2,sizeY+2);
  }
 
 void keyPressed()
 {
   
 }
 
 void keyReleased()
 {
   
 }