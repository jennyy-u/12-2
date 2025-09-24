//jenny yu
//block 1-4
//september 23, 2025

//jenny yu
//block 1-4
//september 23, 2025

moverRandomSize[] myMovers; //creates variable
int n = 50; //number of movers

void setup() {
  size(600, 600);

  myMovers = new moverRandomSize[n];
  int i = 0;
  while (i < n) {
    myMovers[i] = new moverRandomSize();
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
