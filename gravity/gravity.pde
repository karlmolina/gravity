float s = 20;
PVector center;
Goop g;
ArrayList<Goop> goops;
void setup() {
  //fullScreen();
  size(500, 500);
  fill(255);
  noStroke();
  center = new PVector(width/2, height/2);
  g = new Goop(center.x + 100, center.y);
  g.v = new PVector(-4, 10);
  goops = new ArrayList<Goop>();
}

void draw() {
  background(0);
  ellipse(center.x, center.y, 20, 20);

  g.a = getAcc(center, g.p);
  g.move();
  g.see();
}

PVector getAcc(PVector center, PVector position) {
  float dist = PVector.dist(center, position);
  float distSq = dist*dist;
  float oneOverDistSq = 1/distSq;
  PVector dir = PVector.sub(center, position).normalize();
  return dir.mult(oneOverDistSq*10000);
}
