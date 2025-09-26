class button {

  //instance variables
  int x, y, w, h; //x, y is the center
  boolean clicked;
  color highlight, normal;
  String text;

  //constructor -> setup for the object
  button(String t, int _x, int _y, int _w, int _h, color norm, color high) {
    x = _x; //differentiate name from instance variable
    y = _y;
    w = _w;
    h = _h;
    text = t;
    highlight = high;
    normal = norm;
    clicked = false;
  }

  //behaviour functions
  void show() {
    //rectangle
    rectMode(CENTER);
    if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
      fill(highlight);
    } else {
      fill(normal);
    }
    stroke(0);
    strokeWeight(3);
    rect(x, y, w, h, 20); //rounded corner MAKE IT TO SCALE LATER

    //text label
    textAlign(CENTER, CENTER);
    if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
      fill(normal);
    } else {
      fill(highlight);
    }
    textSize(w/4);
    text(text, x, y);

    if (mouseReleased && mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
      clicked = true;
    } else {
      clicked = false;
    }
   
  }
}
