//ArrayList<Group> groups;
//ArrayList<Part> parts;
//PVector start = new PVector();
//float partSize = 1;
//PVector centerOfScreen;
//boolean paint = true;
//Group group;

//void setup() {
//  //noStroke();
//  strokeWeight(1);
//  fill(255);
//  //size(400,400);
//  fullScreen();
//  colorMode(HSB);
//  stroke(255);

//  groups = new ArrayList<Group>();
//  parts = new ArrayList<Part>();
//  background(0);
//  centerOfScreen = new PVector(width/2, height/2);
//  group = new Group();
//}

//void draw() {
//  if (!paint) {
//    background(0);
//  }
//  group.update();
//}

//void mousePressed() {
//  start = new PVector(mouseX, mouseY);
//}

//void mouseReleased() {
//  group.add(new Part(new PVector(start.x, start.y), PVector.sub(start, new PVector(mouseX, mouseY)).setMag(0)));
//}
