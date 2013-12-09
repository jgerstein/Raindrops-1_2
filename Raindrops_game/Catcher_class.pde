class Catcher {
  PVector loc;
  int d;

  Catcher() {
    loc = new PVector(mouseX, height-d);
    d = 30;
  }

  void display() {
    ellipse(loc.x, loc.y, d, d);
  }

  void update() {
    loc.set(mouseX, height-d);
  }
  void catchDrop(Raindrop drop) {
    if (loc.dist(drop.loc) < d/2 + drop.d/2) {
      drop.loc.set(-width, height*10);
      drop.vel.set(0,0);
      score++;
    }
  }
}

