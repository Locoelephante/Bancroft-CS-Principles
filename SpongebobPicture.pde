void setup()
{
 size(800,500); 
 background(#4DB9FF);
}
void draw()
{
  background(#4DB9FF);
  deck();
  backDrop();
  spongeBob();
}

void deck()
{
  stroke(0);
  strokeWeight(0);
  fill(#FCF0AB);
  rect(0,300,800,70);
  fill(#297C10);
  rect(0,370,800,170);
  fill(#393837);
  quad(150,320,600,320,600,370,150,370);
  rect(0,305,800,20);
  strokeWeight(1);
  
  
  
}

void backDrop()
{
  fill(#B90BAE);
   beginShape();
  vertex(100,50);
  vertex(150,50);
  vertex(150,75);
  vertex(200,75);
  vertex(200,50);
  vertex(250,50);
  vertex(250,75);
  vertex(300,75);
  vertex(300,125);
  vertex(250,125);
  vertex(250,100);
  vertex(100,100);
  vertex(100,50);
  endShape();
  
  beginShape();
  vertex(600,50);
  vertex(600,50);
  vertex(600,75);
  vertex(650,75);
  vertex(650,100);
  vertex(600,100);
  vertex(600,125);
  vertex(450,125);
  vertex(450,75);
  vertex(500,75);
  vertex(500,50);
  endShape();
  
  fill(#6C430C);
  rect(120,0,50,380);
  rect(600,0,50,380);
  rect(0,330,120,50);
  rect(650,330,150,50);
  rect(200,280,10,20);
  rect(210,270,10,15);
  rect(570,280,10,20);
  rect(580,270,10,15);
}
void spongeBob()
{
  int x = 100;
  //100
  int y = 10;
  //10
  
  fill(#106AAD);
  ellipse(x+290,y+35,10,10);
  fill(255);
  stroke(255,0,0);
  ellipse(x+290,y+110,30,150);
  stroke(#106AAD);
  ellipse(x+290,y+65,10,10);
  fill(255);
  arc(x+290,y+80,20,20,HALF_PI-HALF_PI,HALF_PI+HALF_PI);
  line(x+290,y+70,x+290,y+90);
  stroke(0);
  fill(#106AAD);
  ellipse(x+290,y+110,35,30);
  fill(#6C430C);
  rect(x+200,y+290,180,50);
  rect(x+240,y+340,25,20);
  rect(x+320,y+340,25,20);
  strokeWeight(25);
  stroke(#6C430C);
  line(x+252.5,y+360,x+247,y+420);
  line(x+332.5,y+360,x+327,y+420);
  stroke(0);
  strokeWeight(1);
  fill(#F3FA32);
  rect(x+200,y+110,180,180);
  fill(255);
  rect(x+200,y+290,180,20);
  triangle(x+250,y+290,x+280,y+290,x+260,y+305);
  triangle(x+300,y+290,x+330,y+290,x+320,y+305);
  fill(255,0,0);
  triangle(x+280,y+290,x+300,y+290,x+290,y+305);
  quad(x+290,y+305,x+300,y+330,x+290,y+335,x+280,y+330);
  fill(255);
  ellipse(x+260,y+180,50,60);
  ellipse(x+320,y+180,50,60);
  fill(#1A9DFF);
  ellipse(x+260,y+180,20,30);
  ellipse(x+320,y+180,20,30);
  fill(0);
  ellipse(x+260,y+180,15,25);
  ellipse(x+320,y+180,15,25);
  fill(255);
  rect(x+274,y+250,15,30);
  rect(x+291,y+250,15,30);
  fill(#F3FA32);
  arc(x+260,y+180,50,60,PI,PI+HALF_PI+HALF_PI,PIE);
  arc(x+320,y+180,50,60,PI,PI+HALF_PI+HALF_PI,PIE);
  arc(x+290,y+240,60,60,PI/32,PI);
  fill(#A59E11);
  ellipse(x+350,y+130,20,20);
  ellipse(x+220,y+140,25,30);
  ellipse(x+220,y+170,10,10);
  ellipse(x+225,y+240,15,15);
  ellipse(x+240,y+265,20,25);
  ellipse(x+355,y+240,20,22);
  ellipse(x+335,y+270,10,10);
  fill(255);
  rect(x+180,y+240,20,25);
  rect(x+380,y+240,20,25);
  strokeWeight(10);
  stroke(#F3FA32);
  line(x+180,y+250,x+140,y+250);
  line(x+400,y+250,x+440,y+250);
  line(x+140,y+250,x+140,y+290);
  line(x+440,y+250,x+440,y+290);
  stroke(0);
  strokeWeight(1);
  fill(#F3FA32);
  ellipse(x+440,y+290,30,20);
  ellipse(x+140,y+290,30,20);
  arc(x+290,y+205,25,30,PI-QUARTER_PI,HALF_PI+HALF_PI+HALF_PI+HALF_PI+QUARTER_PI);
  fill(0);
  ellipse(x+237,y+430,40,20);
  ellipse(x+317,y+430,40,20);
}
//void spongeBob()
//{
  
//  fill(#106AAD);
//  ellipse(390,45,10,10);
//  fill(255);
//  stroke(255,0,0);
//  ellipse(390,120,30,150);
//  stroke(#106AAD);
//  ellipse(390,75,10,10);
//  fill(255);
//  arc(390,90,20,20,HALF_PI-HALF_PI,HALF_PI+HALF_PI);
//  line(390,80,390,100);
//  stroke(0);
//  fill(#106AAD);
//  ellipse(390,120,35,30);
//  fill(#6C430C);
//  rect(300,300,180,50);
//  rect(340,350,25,20);
//  rect(420,350,25,20);
//  strokeWeight(25);
//  stroke(#6C430C);
//  line(352.5,370,347,430);
//  line(432.5,370,427,430);
//  stroke(0);
//  strokeWeight(1);
//  fill(#F3FA32);
//  rect(300,120,180,180);
//  fill(255);
//  rect(300,300,180,20);
//  triangle(350,300,380,300,360,315);
//  triangle(400,300,430,300,420,315);
//  fill(255,0,0);
//  triangle(380,300,400,300,390,315);
//  quad(390,315,400,340,390,345,380,340);
//  fill(255);
//  ellipse(360,190,50,60);
//  ellipse(420,190,50,60);
//  fill(#1A9DFF);
//  ellipse(360,190,20,30);
//  ellipse(420,190,20,30);
//  fill(0);
//  ellipse(360,190,15,25);
//  ellipse(420,190,15,25);
//  fill(255);
//  rect(374,260,15,30);
//  rect(391,260,15,30);
//  fill(#F3FA32);
//  arc(360,190,50,60,PI,PI+HALF_PI+HALF_PI,PIE);
//  arc(420,190,50,60,PI,PI+HALF_PI+HALF_PI,PIE);
//  arc(390,250,60,60,PI/32,PI);
//  fill(#A59E11);
//  ellipse(450,140,20,20);
//  ellipse(320,150,25,30);
//  ellipse(320,180,10,10);
//  ellipse(325,250,15,15);
//  ellipse(340,275,20,25);
//  ellipse(455,250,20,22);
//  ellipse(435,280,10,10);
//  fill(255);
//  rect(280,250,20,25);
//  rect(480,250,20,25);
//  strokeWeight(10);
//  stroke(#F3FA32);
//  line(280,260,240,260);
//  line(500,260,540,260);
//  line(240,260,240,300);
//  line(540,260,540,300);
//  stroke(0);
//  strokeWeight(1);
//  fill(#F3FA32);
//  ellipse(540,300,30,20);
//  ellipse(240,300,30,20);
//  arc(390,215,25,30,PI-QUARTER_PI,HALF_PI+HALF_PI+HALF_PI+HALF_PI+QUARTER_PI);
//  fill(0);
//  ellipse(337,440,40,20);
//  ellipse(417,440,40,20);
//}