 int tt = 0;
  int x = 425;
  int y = 580;
  int d = 50;
  //color dimentions
  int blue = #0752F0;
  color c = color(blue);
  //need to have release
  boolean kp = true;
  //size of dariusJr
  int sizeX = 5; //5 normal //-5000 gone
  int sizeY = 5; //5 normal //-5000 gone
  //coin terms
  int cx = 425;
  //integers for police
  int px  = 775;
  int py = 75;
  int p2x = 775;
  int p2y = 75;
  int p3x = 775;
  int p3y = 75;
  int p4x  = 775;
  int p4y = 75;
  int p5x = 775;
  int p5y = 75;
  int p6x = 775;
  int p6y = 75;
  
void setup()
{
  size(800,600);
  background(255);
  tt = 1;
}

void draw()
{
  int m = minute();
  int s = second();
  stroke(0);
  strokeWeight(1);
  Back();
  Coin coin1 = new Coin(cx-50,p4y);
  Coin coin2 = new Coin(cx,p4y);
  Coin coin3 = new Coin(cx-50,p5y+200);
  Coin coin4 = new Coin(cx,p5y+200);
  Coin coin5 = new Coin(cx-50,p6y+300);
  Coin coin6 = new Coin(cx,p6y+300);
  PoliceCar auto1 = new PoliceCar(px,py);
  PoliceCar auto2 = new PoliceCar(p2x,p2y+200);
  PoliceCar auto3 = new PoliceCar(p3x,p3y+300);
  PoliceCar auto4 = new PoliceCar(p4x-400,p4y);
  PoliceCar auto5 = new PoliceCar(p5x-400,p5y+200);
  PoliceCar auto6 = new PoliceCar(p6x-400,p6y+300);
  
  //The Controls
  if (keyPressed==true && kp == true)
 {
    //delay(300); //300
    
   if(key=='w'||key=='W')
   {
     y=y-d;
   }
   
     if(key=='s'||key=='S')
   {
     y=y+d;
   }
 
      if(key=='a'||key=='A')
   {
     x=x-d;
   }

    if(key=='d'||key=='D')
   {
     x=x+d;
   }
    kp = false;
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
    x=775;
  }
  if((x>=width-750 && y<=height-550) && (x<=width-650 && y<=height-550))
  {
   y=580; 
  }
 if((x>=width-150 && y<=height-550) && (x<=width-50 && y<=height-550))
  {
   y=580; 
  }
 if((x>=width-650 && y<=height-550) && (x<=width-150 && y<=height-550))
  {
   y=80; 
  }
  if((x>=width-50 && y<=height-550) && (x<=width && y<=height-550))
  {
   y=80; 
  }
  if((x>=width-800 && y<=height-550) && (x<=width-750 && y<=height-550))
  {
   y=80; 
  }
  color c = get(x,y);
  if(c == blue)
  {
  //makes something happen
    sizeX= -5000;
    sizeY= -5000;
  }
  
  //movements of police
  px = px - 5;
  
  if(px<=width-830)
  {
   px = width + 30; 
  }
  
  p2x = p2x - 4;
  
  if(p2x<=width-830)
  {
   p2x = width + 30; 
  }
  
  p3x = p3x - 3;
  
  if(p3x<=width-830)
  {
   p3x = width + 30; 
  }
  
    p4x = p4x - 5;
  
  if(p4x<=width-430)
  {
  p4x = width*2-370;
  }
  
  p5x = p5x - 4;
  
  if(p5x<=width-430)
  {
   p5x = width*2-370; 
  }
  
  p6x = p6x - 3;
  
  if(p6x<=width-430)
  {
   p6x = width*2-370; 
  } 
  
  if(tt == 1)
  {
  fill(0);
  textSize(15);
  text("Time" + ":  " + m + ":" + s,355,25);
  
  }

    //DariusJr
  DariusJr(x,y);
}

void Back()
{
  stroke(0);
  fill(#069816); //green back piece
  rect(0,0,50,50);
  rect(150,0,500,50);
  rect(750,0,50,50);
  fill(#95FBFF); //portal
  rect(50,0,100,50);
  rect(650,0,100,50);
  ellipse(75,25,50,50);
  ellipse(75,25,30,30);
  ellipse(75,25,10,10);
  ellipse(125,25,50,50);
  ellipse(125,25,30,30);
  ellipse(125,25,10,10);
  ellipse(675,25,50,50);
  ellipse(675,25,30,30);
  ellipse(675,25,10,10);
  ellipse(725,25,50,50);
  ellipse(725,25,30,30);
  ellipse(725,25,10,10);
  fill(#6A6A6A);//grey
  rect(0,50,800,50);
  rect(0,250,800,50);
  rect(0,350,800,50);
  fill(#6FFA51); //light green
  rect(0,200,800,50);
  rect(0,300,800,50);
  rect(0,500,800,100);
  
  grid();
  stroke(7,82,240);
  fill(#0752F0);//lake
  rect(0,100,800,100); 
  rect(0,400,800,100);
  fill(#0752F0);//lake
  rect(0,500,150,50);
  rect(600,500,150,50);
  rect(50,300,100,50);
  rect(650,300,100,50);
  rect(0,200,150,50);
  rect(650,200,100,50);
  rect(300,200,200,50);
  stroke(0);
  //lillypads
  Lil pad1 = new Lil(75,525);
  Lil pad2 = new Lil(125,525);
  Lil pad3 = new Lil(75,475);
  Lil pad4 = new Lil(75,425);
  Lil pad5 = new Lil(775,425);
  Lil pad6 = new Lil(775,475);
  Lil pad7 = new Lil(775,125);
  Lil pad8 = new Lil(775,175);
  Lil pad9 = new Lil(425,475);
  Lil pad10 = new Lil(425,425);
  Lil pad11 = new Lil(275,425);
  Lil pad12 = new Lil(275,475);
  Lil pad13 = new Lil(375,125);
  Lil pad14 = new Lil(425,125);
  Lil pad15 = new Lil(275,125);
  Lil pad16 = new Lil(275,175);
  Lil pad17 = new Lil(525,175);
  Lil pad18 = new Lil(525,125);
  Lil pad19 = new Lil(75,225);
  Lil pad20 = new Lil(175,125);
  Lil pad21 = new Lil(625,125);
  Lil pad22 = new Lil(625,425);
  Lil pad23 = new Lil(575,425);
  
}
void keyReleased()
{
  kp = true;
}
 

void grid()
{
  strokeWeight(2);
  //horizontal
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
  //veritcle
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
    fill(#FF8408); //orange
    strokeWeight(1);
    ellipse(x,y,sizeX+15,sizeY+20);
    fill(#DBA773); //skin
    ellipse(x,y-15,sizeX+10,sizeY+10);
    ellipse(x-14,y,sizeX+5,sizeY);
    ellipse(x+14,y,sizeX+5,sizeY);
    fill(0); // black
    ellipse(x-5,y+14,sizeX,sizeY+5);
    ellipse(x+5,y+14,sizeX,sizeY+5);
    fill(0); // black
    rect(x-7.5,y-17.5,sizeX+10,sizeY);
    ellipse(x,y,sizeX+5,sizeY+5);
    fill(#FF8408); //orange
    ellipse(x,y,sizeX+2,sizeY+2);
  }
