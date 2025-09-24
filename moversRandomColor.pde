//jenny yu
//block 1-4
//september 24, 2025

//jenny yu
//block 1-4
//september 23, 2025

moverRandomColor[] myMovers; //creates variable
int n = 50; //number of movers

void setup() {
  size(600, 600);

  myMovers = new moverRandomColor[n];
  int i = 0;
  while (i < n) {
    myMovers[i] = new moverRandomColor();
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
