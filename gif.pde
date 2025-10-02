class gif {

  PImage[] frames; //all the pictures in the gif
  int numFrames;
  int speed; //how often the frame is changed
  int currentFrame;
  float x, y, w, h;

  gif(String pre, String post, int n, int s, float _x, float _y) {
    frames = new PImage[n];
    numFrames = n;
    speed = s;
    currentFrame = 0;
    x = _x;
    y = _y;

    int i = 0;
    while (i < numFrames) {
      frames[i] = loadImage(pre + i + post);
      i++;
    }

    w = frames[0].width;
    h = frames[0].height;
  }

  gif(String pre, String post, int n, int s, float _x, float _y, float _w, float _h) {
    this(pre, post, n, s, _x, _y);
    w = _w;
    h = _h;
  }

  void show() {
    if (currentFrame == numFrames) currentFrame = 0;
    image(frames[currentFrame], x, y, w, h);
    if (frameCount % speed == 0) currentFrame++;
  }
}
