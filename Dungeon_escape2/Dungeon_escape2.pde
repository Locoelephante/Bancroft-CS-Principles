    //speed for police
  int speed = 1;
  //score and time
  int score = 0;
  // global
  int x = 425;
  int y = 580;
  int d = 50;
  //color dimentions
  int blue = #0752F0;
  color b = color(blue);
  int coin = #FFDD55;
  color c = color(coin);
  int coin2 = #FFDD56;
  color c2 = color(coin);
  int coin3 = #FFDD57;
  color c3 = color(coin);
  int coin4 = #FFDD58;
  color c4 = color(coin);
  int coin5 = #FFDD59;
  color c5 = color(coin);
  int coin6 = #FFDD60;
  color c6 = color(coin);
  //need to have release
  boolean kp = true;
  boolean cp = true;
  boolean cp2 = true;
  boolean cp3 = true;
  boolean cp4 = true;
  boolean cp5 = true;
  boolean cp6 = true;
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
  boolean ss = false;
  boolean YY = false;
  
void setup()
{
  size(800,600);
  background(255);
}

void draw()
{
  begin();
  if(keyPressed|| ss == true)
  {
    if(key == 'i'||key == 'I')
    {
     Inst(); 
    }
    if(key == 's'||key == 'S' || ss == true)
    {
      ss = true;
  float time = millis();
  stroke(0);
  strokeWeight(1);
  Back();
  if(cp == true)
  {
  Coin coin1 = new Coin(cx-50,p4y);
  }
  if(cp2 == true)
  {
  coin2 coin2 = new coin2(cx,p4y);
  }
    if(cp3 == true)
  {
  coin3 coin3 = new coin3(cx-300,p5y+200);
  }
    if(cp4 == true)
  {
  coin4 coin4 = new coin4(cx+300,p5y+200);
  }
    if(cp5 == true)
  {
  coin5 coin5 = new coin5(cx-250,p6y+300);
  }
    if(cp6 == true)
  {
  coin6 coin6 = new coin6(cx+250,p6y+300);
  }
  
  PoliceCar auto1 = new PoliceCar(px,py);
  PoliceCar auto2 = new PoliceCar(p2x,p2y+200);
  PoliceCar auto3 = new PoliceCar(p3x,p3y+300);
  PoliceCar auto4 = new PoliceCar(p4x-400,p4y);
  PoliceCar auto5 = new PoliceCar(p5x-400,p5y+200);
  PoliceCar auto6 = new PoliceCar(p6x-400,p6y+300);
  
  //The Controls
  if (keyPressed==true && kp == true)
 {
   
   if(keyCode==UP)
   {
     y=y-d;
   }
   
     if(keyCode==DOWN)
   {
     y=y+d;
   }
 
      if(keyCode==LEFT)
   {
     x=x-d;
   }

    if(keyCode==RIGHT)
   {
     x=x+d;
   }
   // or you can use w a s  d
   /** 
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
   }*/
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
  // portal things
  if((x>=width-750 && y<=height-550) && (x<=width-650 && y<=height-550))
  {
   y=580; 
   score = score + 5;
   cp = true;
   cp2 = true;
   cp3 = true;
   cp4 = true;
   cp5 = true;
   cp6 = true;
   if(speed<8)
   {
   speed = speed + 1;
   }
  }
 if((x>=width-150 && y<=height-550) && (x<=width-50 && y<=height-550))
  {
   y=580; 
   score = score + 5;
   cp = true;
   cp2 = true;
   cp3 = true;
   cp4 = true;
   cp5 = true;
   cp6 = true;
   if(speed<8)
   {
   speed = speed + 1;
   }
  }
  // other
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
  color b = get(x,y);
  if(b == blue)
  {
    sizeX= -5000;
    sizeY= -5000;
  }
  color c = get(x,y);
  if(c == coin)
  {
    score = score + 10;
    cp = false;
      //// Create and start the sine oscillator.
      //pulse = new Pulse(this);
    
      ////Start the Pulse Oscillator. 
      //pulse.play();
  }
  color c2 = get(x,y);
  if(c2 == coin2)
  {
    score = score + 10;
    cp2 = false;
  }
  color c3 = get(x,y);
  if(c3 == coin3)
  {
    score = score + 10;
    cp3 = false;
  }
  color c4 = get(x,y);
  if(c4 == coin4)
  {
    score = score + 10;
    cp4 = false;
  }
  color c5 = get(x,y);
  if(c5 == coin5)
  {
    score = score + 10;
    cp5 = false;
  }
  color c6 = get(x,y);
  if(c6 == coin6)
  {
    score = score + 10;
    cp6 = false;
  }
 
  //movements of police
  px = px - speed-2;
  
  if(px<=width-830)
  {
   px = width + 30; 
  }
  
  p2x = p2x - speed-1;
  
  if(p2x<=width-830)
  {
   p2x = width + 30; 
  }
  
  p3x = p3x - speed-2;
  
  if(p3x<=width-830)
  {
   p3x = width + 30; 
  }
  
    p4x = p4x - speed-2;
  
  if(p4x<=width-430)
  {
  p4x = width*2-370;
  }
  
  p5x = p5x - speed-1;
  
  if(p5x<=width-430)
  {
   p5x = width*2-370; 
  }
  
  p6x = p6x - speed-2;
  
  if(p6x<=width-430)
  {
   p6x = width*2-370; 
  } 
// coin
cx=cx;

  fill(0);
  textSize(15);
  if(speed<8)
  {
  text("Round:   " + speed, 330,20);
  }
  else
  {
   text("Round:   " + "∞ MODE", 330,20); 
  }
  text("Score:   " + score, 330,40);
  // secret button
  if(keyPressed=true)
  {
   if(key == 'M')
   {
     score= 1101101;
     sizeX = 5;
     sizeY = 5;
   }
   if(key == 'D')
   {
     score= 1100100;
     sizeX = 5;
     sizeY = 5;
   }
   if(key == 'O')
   {
     score=1101111;
     sizeX = 5;
     sizeY = 5;
   }
   if(key == 'X')
   {
     sizeX = 5;
     sizeY = 5;
   }
  }
    //DariusJr
  DariusJr(x,y);
  if(sizeX<5 && sizeY<5)
    {
      end();
    }
    if(keyPressed)
    {
    if(key == ' ')
    {
      sizeX = 5;
      sizeY = 5;
      x=425;
      y=580;
      score = 0;
      speed = 1;
      ss = false;
      cp = true;
      cp2 = true;
      cp3 = true;
      cp4 = true;
      cp5 = true;
      cp6 = true;
      YY = false;
    }
    }
    if(keyPressed)
    {
      if(key == 'y'||key == 'Y'|| YY==true)
      {
        DariusJr(x,y-50);
        DariusJr(x-50,y);
        DariusJr(x+50,y);
        DariusJr(x,y+50);
        YY=true;
      }
    }
    }
   }
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
  ss = true;
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
  line(350,50,350,600);
  line(400,50,400,600);
  line(450,50,450,600);
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
  void begin()
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
  fill(255);
  rect(110,130,600,100);
  rect(175,260,450,100);
  rect(155,390,510,80);
  fill(0);
  textSize(72);
  text("Dungeon Escape",120,200);
  textSize(32);
  text("Start = Press any Key",230,320);
  textSize(32);
  text("Instructions = hold the I key",185,440); 
  }
  
 void end()
 {
   background(0);
   fill(255);
   textSize(72);
   text("You are Captured!",100,300);
   textSize(32);
   text("To Restart Press the Space Bar",150,400);
   fill(255);
   ellipse(400,480,50,50);
   fill(#FF8408); //orange
    strokeWeight(1);
    ellipse(400,480,5+15,5+20);
    fill(#DBA773); //skin
    ellipse(400,480-15,5+10,5+10);
    ellipse(400-14,480,5+5,5);
    ellipse(400+14,480,5+5,5);
    fill(0); // black
    ellipse(400-5,480+14,5,5+5);
    ellipse(400+5,480+14,5,5+5);
    fill(0); // black
    rect(400-7.5,480-17.5,5+10,5);
    ellipse(400,480,5+5,5+5);
    fill(#FF8408); //orange
    ellipse(400,480,5+2,5+2);
 }
 void Inst()
 {
   fill(0);
   background(255);
   textSize(62);
   text("Instructions",200,100);
   textSize(20);
   text("Use the Arrow Keys to Move",100,175);
   //arrow key picture
   /**beginShape();
   vertex();
   endShape();*/
   text("Do Not Get Hit by the Police",100,250);
   fill(255,0,0);
    arc(425,240,50,50,PI,TWO_PI,PIE);
    fill(#0752F0);
    arc(425,240,50,50,0,PI,PIE);
    fill(0);
   text("Or",100,325);
   text("The Water",100,400);
   fill(#0752F0);
   rect(225,375,50,50);
   fill(0);
   text("There are Limitations to the Places you can Go",100,475); 
   text("(You can Go on Lillypads and Through Portals)",100,550);
   fill(#24672D);
   arc(600,550,50,50,0-QUARTER_PI,PI+QUARTER_PI,PIE);
   fill(#95FBFF);
   rect(650,525,50,50);
  ellipse(675,550,50,50);
  ellipse(675,550,30,30);
  ellipse(675,550,10,10);
 }
