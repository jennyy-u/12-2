//jenny yu
//block 1-4
//september 24, 2025

//variables
color blue = #84b6f4;
color pink = #e9acbb;
color yellow = #fedc7b;
color white = #ffffff;
color black = #000000;

boolean mouseReleased;
boolean wasPressed;

button blueButton;
button pinkButton;
button yellowButton;
button whiteButton;
button blackButton;


int bkg;

void setup() {
  size(600, 600);
  rectMode(CENTER);
  blueButton = new button("blue", 150, 100, 120, 120, blue, yellow);
  pinkButton = new button("pink", 150, 280, 120, 120, pink, blue);
  yellowButton = new button("yellow", 150, 460, 120, 120, yellow, pink);
  whiteButton = new button("white", 450, 200, 150, 150, white, black);
  blackButton = new button("black", 450, 400, 150, 150, black, white);
  bkg = white;
}


void draw() {

  background(bkg);
  click();
  blueButton.show();
  pinkButton.show();
  yellowButton.show();
  whiteButton.show();
  blackButton.show();
  if (blueButton.clicked) {
    bkg = blue;
  }
  if (pinkButton.clicked) {
    bkg = pink;
  }
  if (yellowButton.clicked) {
    bkg = yellow;
  }
  if (whiteButton.clicked) {
    bkg = white;
  }
  if (blackButton.clicked) {
    bkg = black;
  }
}
