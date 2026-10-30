//your code here
Particle [] bob = new Particle[500];
OddballParticle moon = new OddballParticle();
void setup()
{
  //your code here
  size(400,400);
  for(int i = 0; i<bob.length; i++)
    bob[i] = new Particle();
  //bob[0] = new OddballParticle();
}

void draw()
{
  //your code here
  background(#162543,80);
  for(int i = 0; i<bob.length; i++){
    bob[i].move();
    bob[i].show();
  }
  moon.move();
  moon.show();
  fill(#6C6A61);
  rect(0,300,400,400);
  rect(250,180,180,200);
  rect(270,150,160,50);
  triangle(250,270,250,300,200,300);
  
  rect(175,190,15,200);
  rect(170,200,30,200);
  
  //cacti
  fill(#555D4A);
  ellipse(100,300,40,300);
  ellipse(60,250,60,30);
  ellipse(35,220,20,70);
  
  ellipse(130,230,60,30);
  ellipse(160,200,20,70);
}
class Particle
{
  //your code here
  double myX,myY,myAngle,mySpeed;
  int radX, radY, myOpacity;
  color myColor;
  
  Particle(){
    myX = 200;
    myY = 400; 
    myAngle = (Math.random()*2*Math.PI);
    mySpeed = (Math.random()*7);
    myColor = color (0,(int)(Math.random()*256),255);
    radX = 5;
    radY = 5;
    myOpacity = (int)(Math.random()*60) + 90;
  }
  void move(){
    myX = myX+Math.cos(myAngle)*mySpeed;
    myY = myY+Math.sin(myAngle)*mySpeed;
    
    myAngle +=0.03;
    
  }
  void show(){
    fill(myColor,myOpacity);
    noStroke();
    ellipse((float)myX,(float)myY,radX,radY);
  }
}

class OddballParticle extends Particle//inherits from Particle
{
  OddballParticle(){
    myX = 100;
    myY = 100; 
    myAngle = (Math.random()*2*Math.PI);
    mySpeed = 1;
    myColor = color(200,200,200);
    radX = 50;
    radY = 50;
    myOpacity = 1000;
  }
}

