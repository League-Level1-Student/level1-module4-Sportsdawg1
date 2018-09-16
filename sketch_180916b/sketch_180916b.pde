void setup() {
  size(900,900);
}
  float bX = 100;
  float bY = 100;
  float vy = 5;
  float gravity = 0.5;
  float pipeX = 800;
  int upperPipeHeight = 300;
  int lowerPipeHeight = 500;
void draw() {
  background(0, 0, 255);
  fill(0, 255, 0);
  stroke(255, 0, 0);
  rect(pipeX, lowerPipeHeight, 100, 400);
  rect(pipeX, 0, 100, upperPipeHeight);
  ellipse(bX, bY, 10, 10);
  pipeX-=10;
  bY = bY + vy;
  vy += gravity;
  if (pipeX < -100) {
    pipeX = 1000;
    upperPipeHeight = (int) random(100, 400);
    lowerPipeHeight = (int) random(500, 800);
  }
  
  if (bX >= pipeX && bX <= pipeX + 100 && s
}

void mousePressed () {
  vy = -10;
}
