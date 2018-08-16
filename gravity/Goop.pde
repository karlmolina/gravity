class Goop {
  PVector p, v = new PVector(), a = new PVector();
  
  Goop() {}
  
  Goop(float x, float y) {
    p = new PVector(x, y);
  }
  
  void move() {
    v.add(a);
    p.add(v);
  }
  
  void see() {
    ellipse(p.x,p.y,s,s);
  }
}
