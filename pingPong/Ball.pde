class Ball {

  float ballX;
  float ballY;
  float xSpeed;
  float ySpeed;
  
  Ball() {
    ballX=random(width);
    ballY=random(height/6);
    xSpeed = 4;
    ySpeed = 4;
  }


  void display() {
    ellipseMode(CENTER);
    ellipse(ballX,ballY, 30, 30);
  }
  
  void move(){
    ballX = ballX + xSpeed;
    ballY = ballY + ySpeed;
    
    if(ballX > width || ballX < 0){
      xSpeed = -1 * xSpeed;
    }
  
    if(ballY < 0){
      ySpeed = -1 * ySpeed;
    }
  }
  
void bottom(){
    if(ballY > height){
        background(255,0,0);
    }
  }
}