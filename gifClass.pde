//jenny yu
//block 1-4
//october 2, 2025

gif sky;

void setup() {
  size(600, 400);
  pushMatrix();
  scale(3);
  sky = new gif("frame_", "_delay-0.1s.gif", 24, 6, 0, 0);
  popMatrix();
}



void draw() {
  background(255);
  sky.show();
  
}
