class mover {

  //instance variables -> things that every mover(instance) gets
  float x, y;     //location
  float vx, vy;   //velocity
  float d;        //diameter


  //constructor -> setup for the class
  mover() {
    d = 100;
    x = random(0, width);
    y = random(0, height);
    vx = random(-1, 1);
    vy = random(-1, 1);
  }



  void act() {
    move();
    bounceEdge();
  }

  void move() {
    x = x + vx;
    y = y + vy;
  }

  void bounceEdge() {
    if (x < 0 || x > width) vx = -vx;
    if (y < 0 || y > height) vy = -vy;
  }


  void showBody() {
    noStroke();
    fill(255, 50);
    circle(x, y, d);
  }


  void showConnections() {
    int i = 0;
    while (i < numOfMovers) {
      float dist = dist(x, y, movers[i].x, movers[i].y);
      if (dist <= 200) {
        float a = map(dist, 0, 200, 255, 0);
        stroke(255, a);
        strokeWeight(2);
        line (x, y, movers[i].x, movers[i].y);
        ;
      }
      i++;
    }
  }
}
