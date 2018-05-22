Bat bat ;
Ball ball;

void setup() {
  size(640, 360);
  bat = new Bat();
  ball = new Ball();
}


void draw() {
  background(0);

  bat.display();

  ball.display();
  ball.move();

  if (bat.hit(ball)) {
    ball.ySpeed = -1 * ball.ySpeed;
  }
  
 ball.bottom();
}

void keyReleased(){
  bat.batX += 0;
}

void keyPressed(){
  bat.batX = constrain(bat.batX,65,width-65);
  if(key=='a'){
    bat.batX = bat.batX -20;
  }
  if(key=='d'){
   bat.batX = bat.batX +20;
  }
}