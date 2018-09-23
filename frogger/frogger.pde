void setup () {
  size(400,400);
}
int frogX = 200;
int frogY = 320;
int hopDistance = 30;
Car car1 = new Car();
Car car2 = new Car();
Car car3 = new Car();
/*int c1x = 100;
int c2x = 300;
int c3x = 200;
int c1y = 20;
int c2y = 60;
int c3y = 100;
*/
void draw () {
  background(255,0,255);
  fill(0, 255, 0);
  ellipse(frogX, frogY, 10, 10);
  car1.display();
  car2.display();
  car3.display();
  if (frogY<=0) {
    frogY+=hopDistance;
  } else if (frogY>=400) {
    frogY-=hopDistance;
  } else if (frogX<=0) {
    frogX+=hopDistance;
  } else if (frogX>=400) {
    frogX-=hopDistance;
  }
}
void keyPressed(){
  if (key == CODED) {
    if (keyCode == UP) {
      frogY-=hopDistance;
    } else if(keyCode == DOWN){
      frogY+=hopDistance;
    } else if(keyCode == RIGHT){
      frogX+=hopDistance;
    } else if(keyCode == LEFT){
      frogX-=hopDistance;
    }
  }
}
class Car {
  Car() {}
  void display() {
    fill(0,255,0);
    rect(10, 20, 30, 20);
    rect(20,100,30,20);
  }
  void moveLeft () {
    
  }  
  
}
