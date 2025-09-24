class mover {
  //instance variables
  float x, y;

  float r = random(255);
  float g = random(255);
  float b = random(255);

  //constructor -> setup for the object
  mover() {
    x = width/2;
    y = height/2;
  }

  //behaviour functions
  void show() {
    stroke(0);
    fill(r, g, b);
    strokeWeight(5);
    circle(x, y, 100);
  }

  void act() {
    x = x + random(-2, 2);
    y = y + random(-2, 2);
  }
}
