void setup() {
  size(900,900);
  textSize(40);
}
  float bX = 100;
  float bY = 100;
  float vy = 3;
  float gravity = 0.5;
  float pipeX = 800;
  int upperPipeHeight = 300;
  int lowerPipeHeight = 500;
  boolean gameOver = false;
  int score = 0;
  
void draw() {
if (gameOver == false) {
  background(0, 0, 255);
  fill(0, 255, 0);
  stroke(255, 0, 0);
  rect(pipeX, lowerPipeHeight, 100, 400);
  rect(pipeX, 0, 100, upperPipeHeight);
  ellipse(bX, bY, 10, 10);
  pipeX-=10;
  bY = bY + vy;
  vy += gravity;
  text(score,400,400);
  if (pipeX == 0) {
    score++;
  }
  if (pipeX < -100) {
    pipeX = 1000;
    upperPipeHeight = (int) random(100, 400);
    lowerPipeHeight = (int) random(500, 800);
  }
  
  if (bX >= pipeX && bX <= pipeX + 100 && bY <= upperPipeHeight) {
    gameOver = true;
  } else if (bX >= pipeX && bX <= pipeX + 100 && bY >= lowerPipeHeight) {
    gameOver = true;
  } else if (bY >= 900 || bY <= 0) {
    gameOver = true;
  }
} else {
  gameEnd();
}
}
void gameEnd () {
  background(255,0,0);
  fill(0,255,0);
  text(score,400,400);
}
void mousePressed () {
  if (gameOver == true) {
    gameOver = false;
    upperPipeHeight = 300;
    lowerPipeHeight = 500;
    vy = 3;
    bY = 100;
    pipeX = 800;
    score = 0;
  } else {
    vy-=8.2;
  }
}
