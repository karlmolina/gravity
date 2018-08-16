float s = 10;
PVector center;
ArrayList<Goop> goops;
PVector mouseStart;
PVector mouse;
float mouseVelocityM = 0.05;
int[][] stars = new int[10][2];

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
  if (frameCount % 5 == 0 || frameCount % 5 == 2 || frameCount % 5 == 4) {
    fill(0, 10);
    rect(0, 0, width, height);
    //background(0);
  }
  fill(255);
  if (frameCount % 10 == 0) {
    for (int i = 0; i < 10; i++) {
      stars[i][0] = (int)random(width);
      stars[i][1] = (int)random(height);
      ellipse(stars[i][0], stars[i][1], 1, 1);
    }
  }
  stroke(140);
  if (frameCount % 100 == 0) {
    for (int i = 0; i < 9; i++) {
      for (int j = i + 1; j < 10; j++) {
        println(j);
        if (dist(stars[i][0], stars[i][1], stars[j][0], stars[j][1]) < 400) {
          line(stars[i][0], stars[i][1], stars[j][0], stars[j][1]);
        }
      }
    }
  }
  noStroke();
  ellipse(center.x, center.y, 20, 20);
  Goop remove = null;
  for (Goop g : goops) {
    g.a = getAcc(center, g.p);
    g.move();
    g.see();
    if (PVector.dist(center, g.p) > center.x) {
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
