import processing.javafx.*;


//jenny yu
//block 1-4
//october 3, 2025

mover[] movers;
int numOfMovers = 50;

void setup() {
  size(800, 800, FX2D);
  movers = new mover[numOfMovers];
  
  int i = 0;
  while (i < numOfMovers) {
    movers[i] = new mover();
    i++;
  }
}

void draw() {
  background(0);
  int i = 0;
  while (i < numOfMovers) {
    movers[i].act();
    movers[i].showBody();
    movers[i].showConnections();
    i++;
  }
}
