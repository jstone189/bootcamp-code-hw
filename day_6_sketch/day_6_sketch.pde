//not sure how to include array into this
int dim;

void setup() {

  size(500,500);
  dim = width/2;
  colorMode(RGB, 100);
  noStroke();
  ellipseMode(RADIUS);
  smooth();
  frameRate(60);
  background(#7BFFFF);

}

void draw () {
  
  background(0);
  for (int x = 0; x <= width; x+=dim) {
     drawGradient(x, height/2);

  }
}

void drawGradient(float x, float y) {
  
  int radius = dim/1;
  float h = random(0, 100);
  for (int r = radius; r > 0; --r) {
    fill(h, 20, 15);
    ellipse(x, y, r, r);
    h = (h + 1) % 100;
    
  }
}