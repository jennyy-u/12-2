import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

import processing.javafx.*;

//jenny yu
//block 1-4
//september 18, 2025


//colour variables
color lightPink = #f597ba;
color darkPink = #ee4d64;
color red = #de0001;
color orange = #f18e11;
color yellow = #f9f349;
color green = #a0fa56;
color blue = #88cdfa;
color purple = #ec1df2;
color pink = #e87799;

//font variables
PFont cheri;
PFont cheriClear;
PFont toffee;
PFont bubblegum;

//sound variables
Minim minim;
AudioPlayer song;
AudioPlayer success;
AudioPlayer fail;

//
int score;
int bestScore;

//random puzzle


int randomWord = (int) random (0, 7); //generating random integer from 0-6 (no decimal)
int randomColor = randomWord;
//int randomColor = (int) random (0, 7);

String[] words = {"RED", "ORANGE", "YELLOW", "GREEN", "BLUE", "PURPLE", "PINK"};
color[] colors = {red, orange, yellow, green, blue, purple, pink};


//mode framework
int mode;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;

//gif variables
PImage[] gif;
int numOfFrames;
int f;

//timer related variables
float time;
float wait;
float textS;


void setup() {
  size(800, 800, FX2D);
  background(255);

  mode = GAME;

  score = 0;
  bestScore = 0;
  

  //font
  cheri = createFont("CHERI___.TTF", 50);
  cheriClear = createFont("CHERL___.TTF", 80);
  toffee = createFont("Sweet Toffee.ttf", 40);
  bubblegum = createFont ("Bubblegum.ttf", 60);

  //gif setup
  numOfFrames = 48;
  gif = new PImage[numOfFrames];

  int gF = 0;
  while (gF < numOfFrames) {
    gif[gF] = loadImage("frame_" + gF + "_delay-0.03s.gif");
    gF++;
  }

  time = millis();
  wait = 120;
  textS = 30;

  //sound setup
  minim=new Minim(this);
  song =minim.loadFile("chill-lofi-music.mp3");
  success = minim.loadFile("SUCCESS.wav");
  fail = minim.loadFile("FAILURE.wav");
}



void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  }
}


void mouseReleased() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 630 && mouseY < 700 && mode == INTRO) {
    mode = GAME;
    score = 0;
  } else if (mouseX > 300 && mouseX < 500 && mouseY > 630 && mouseY < 700 && mode == GAMEOVER) {
    mode = INTRO;
    textS = 30;
    wait = 120;
  } else if (mouseX > 0 && mouseX < width/2 && mouseY > 0 && mouseY < height && mode == GAME) {
    if (randomColor == randomWord) {
      fail.play();
      //fail.amp(0.5);
      mode = GAMEOVER;
    } else if (randomColor != randomWord) {
      success.play();
      //success.amp(0.5);
      score = score + 1;
      bestScore = bestScore + 1;
      textS = 30;
      wait = 120;
      newPuzzle();
    }
  } else if (mouseX > width/2 && mouseX < width && mouseY > 0 && mouseY < height && mode == GAME) {
    if (randomColor == randomWord) {
      success.play();
      score = score + 1;
      bestScore = bestScore + 1;
      textS = 30;
      wait = 120;
      newPuzzle();
    } else if (randomColor != randomWord) {
      fail.play();
      mode = GAMEOVER;
    }
  }
}

void newPuzzle() {
  float balance = (float) random(0, 1);
  if (balance < 0.5) {
    randomWord = (int) random (0, 7);
    randomColor = randomWord;
  } else if (balance >= 0.5) {
    randomWord = (int) random (0, 7);
    randomColor = (int) random (0, 7);
    while (randomWord == randomColor) {
      randomWord = (int) random (0, 7);
      randomColor = (int) random (0, 7);
    }
    
  }
}

//randomWord = (int) random (0, 7);
//randomColor = (int) random (0, 7);
