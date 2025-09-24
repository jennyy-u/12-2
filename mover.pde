class mover {
  //instance variables
  float x, y;

  //constructor -> setup for the object
  mover() {
    x = width/2;
    y = height/2;
  }

  //behaviour functions
  void show() {
    stroke(0);
    fill(255);
    strokeWeight(5);
    circle(x, y, 100);
  }

  void act() {
    x = x + random(-2, 2);
    y = y + random(-2, 2);
  }
}
