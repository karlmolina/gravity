//class Group {
//  ArrayList<Part> list;
//  PVector center;

//  Group() {
//    list = new ArrayList();
//    list.add(new Part(width + 50, height + 25));
//  }

//  void add(Part p) {
//    list.add(p);
//  }

//  void update() {
//    for (Part p : list) {
//      PVector dist = PVector.sub(centerOfScreen, p.pos); //<>//
//      println("dist " + dist);
//      p.acc.x = 1/pow(dist.x, 2) * Math.signum(dist.x);
//      p.acc.y = 1/pow(dist.y, 2) * Math.signum(dist.y);
//      println("p.acc " + p.acc);
//      println("p.vel " + p.vel);
//      if (p.acc.mag() > 10) {
//        p.acc.setMag(10);
//      }

//      p.update();
//      p.show();
//    }
//  }

//  PVector average() {
//    float xSum = 0, ySum = 0;
//    for (Part p : list) {
//      xSum += p.pos.x;
//      ySum += p.pos.y;
//    }
//    return new PVector(xSum/list.size(), ySum/list.size());
//  }

//  PVector averageWithout(Part without) {
//    float xSum = 0, ySum = 0;
//    for (Part p : list) {
//      if (p != without) {
//        xSum += p.pos.x;
//        ySum += p.pos.y;
//      }
//    }
//    int size = list.size()-1;
//    if (size > 0) {
//      return new PVector(xSum/size, ySum/size);
//    }
//    return without.pos;
//  }
//}
