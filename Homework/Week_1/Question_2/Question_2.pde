void setup() {
  size(300, 300);
}

void draw(){
  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      int r = int(map(i, 0, width, 255, 0));
      int g = int(map(j, 0, height, 255, 0));
      float d=dist(mouseX, mouseY, i, j);
      int b = int(map(d, 0, width, 255,0));
      stroke(r, g, b);
      point(i, j);
    }
  }
}
