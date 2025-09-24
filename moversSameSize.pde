//jenny yu
//block 1-4
//september 23, 2025

mover[] myMovers; //creates variable
int n = 10; //number of movers

void setup() {
  size(600, 600);

  myMovers = new mover[n];
  int i = 0;
  while (i < n) {
    myMovers[i] = new mover();
    i++;
  }
}


void draw() {

  int i = 0;
  while (i < n) {
    myMovers[i].act();
    myMovers[i].show();
    i++;
  }
}
