PShape asteroid;

void setup() {
  rectMode(CENTER);
  size(400, 400);
  background(0);
  asteroid = createShape(RECT, 0, 0, 0, 0);
}

void draw() {
  beginShape();
  vertex(100, 100);
  vertex(100, 150);
  vertex(150, 150);
  vertex(150, 100);

  endShape();
}

/*
beginShape();
 while (...)
 a.rotate(...);
 a.setMag();
 
 
 endShape();
 
 
 */
