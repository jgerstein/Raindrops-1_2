int score = 0;
Raindrop[] r = new Raindrop[100];
Catcher catcher;

void setup() {
  size(500,700);
  for (int i = 0; i < r.length; i++) {
    r[i] = new Raindrop();
  } 
  catcher = new Catcher();
}

void draw() {
  println("The score is: " + score);
  background(0,30,100);
  for (int i = 0; i < r.length; i++) {
    r[i].display();
    r[i].drop();
    catcher.catchDrop(r[i]);
  } 
  catcher.display();
  catcher.update();
}

