float s = 50;
PVector center;
Goop g;
void setup() {
  fullScreen();
  fill(255);
  noStroke();
  center = new PVector(width/2, height/2);
  g = new Goop(center.x + 300, center.y);
}

void draw() {
  background(0);
  PVector diff = PVector.sub(center, g.p); //<>//
  PVector direction = diff.copy();
  direction.normalize();
  
  PVector diffSquared = new PVector(diff.x*diff.x, diff.y*diff.y);
  
  println(direction);
  println(diffSquared);
  
  g.see();
}
