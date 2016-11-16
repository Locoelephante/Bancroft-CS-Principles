void setup()
{
   size(1000,1000); 
   background(#1CFF9B);
}

void draw()
{
  int x = (int)(Math.random()*1000);
  int y = (int)(Math.random()*1000);
 Car auto1 = new Car(x,y);
 
 Boat auto2 = new Boat(x+10,y+10);
 
 Car auto3 = new Car(x,y);
 
 Boat auto4 = new Boat(x+10,y+10);
 
 Car auto5 = new Car(x,y);
 
 Boat auto6 = new Boat(x+10,y+10);
 
 Car auto7 = new Car(x,y);
 
 Boat auto8 = new Boat(x+10,y+10);
 
 Car auto9 = new Car(x,y);
}