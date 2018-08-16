//class Part {
//  PVector pos, vel = new PVector(), acc = new PVector();
//  PVector prevPos;
//  float hue = 150;

//  Part(float x, float y, float velocityDifference) {
//    pos = new PVector(x, y);
//    prevPos = new PVector();
//    vel = new PVector(random(-velocityDifference, velocityDifference), random(velocityDifference, velocityDifference));
//  }

//  Part(PVector p) {
//    this(p.x, p.y, 20);
//  }
  
//   Part(PVector pos, PVector vel) {
//    prevPos = new PVector();
//    this.pos = pos;
//    this.vel = vel;
//    acc = new PVector();
//  }
  
//  Part(float x, float y) {
//    pos = new PVector(x, y);
//  }

//  void update() {
//    vel.add(acc);
//    pos.add(vel);
//  }

//  void show() {
//    ellipse(pos.x, pos.y, partSize, partSize);
//  }
//}
