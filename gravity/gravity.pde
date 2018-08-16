float s = 20;
PVector center;
Goop g;
void setup() {
  //fullScreen();
  size(500,500);
  fill(255);
  noStroke();
  center = new PVector(width/2, height/2);
  g = new Goop(center.x + 100, center.y);
  g.v = new PVector(0,10);
}

void draw() {
  background(0);
  ellipse(center.x,center.y,20,20);
  PVector dist = PVector.sub(center, g.p); //<>//
  PVector dir = new PVector();
  dir.x = Math.signum(dist.x);
  dir.y = Math.signum(dist.y);
  
  
  PVector distSquared = new PVector(dist.x*dist.x, dist.y*dist.y);
  PVector oneOverdistSquared = new PVector(1/distSquared.x, 1/distSquared.y);
  //println("1"+dir);
  //println("2"+distSquared);
  //println("3"+oneOverdistSquared);
  if (dist.x == 0) {
    oneOverdistSquared.x = 0;
  }
  if (dist.y == 0) {
    oneOverdistSquared.y = 0;
  }
  
  
  g.a = oneOverdistSquared.mult(10);
  g.a.x *= dir.x;
  g.a.y *= dir.y;
  //g.a.limit(.5);
  g.move();
  g.see();
}
