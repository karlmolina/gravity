float s = 20;
PVector center;
ArrayList<Goop> goops;
PVector mouseStart;
PVector mouse;
float mouseVelocityM = 0.05;

void setup() {
  fullScreen();
  //size(500, 500);
  fill(255);
  noStroke();
  center = new PVector(width/2, height/2);
  Goop g = new Goop(center.x + 100, center.y);
  g.v = new PVector(-4, 10);
  goops = new ArrayList<Goop>();
  goops.add(g);
}

void draw() {
  mouse = new PVector(mouseX, mouseY);
  fill(0, 10);
  rect(0, 0, width, height);
  //background(0);
  fill(255);
  ellipse(random(width), random(height), 1, 1);
  ellipse(center.x, center.y, 20, 20);
  Goop remove = null;
  for (Goop g : goops) {
    g.a = getAcc(center, g.p);
    g.move();
    g.see();
    if (PVector.dist(center, g.p) > center.y) {
      remove = g;
    }
  }

  if (remove != null) {
    goops.remove(remove);
  }
}

PVector getAcc(PVector center, PVector position) {
  float dist = PVector.dist(center, position);
  float distSq = dist*dist;
  float oneOverDistSq = 1/distSq;
  PVector dir = PVector.sub(center, position).normalize();
  return dir.mult(oneOverDistSq*10000);
}

void mousePressed() {
  mouseStart = mouse.copy();
}

void mouseReleased() {
  PVector vel = PVector.sub(mouseStart, mouse).mult(mouseVelocityM);
  Goop g = new Goop();
  g.p = mouse.copy();
  g.v = vel;
  goops.add(g);
}

PVector randPVector(int w, int h) {
  return new PVector(random(w), random(h));
}
