class Bat {

  float batX;
  float batY;
  Bat() {
    batX = 60;
    batY = height-20;
  }

  void display() {
    rectMode(CENTER);
    fill(255);
    noStroke();
    rect(batX, batY, 100, 25);
  }

  boolean hit(Ball b) {
    float d = dist(0, batY, 0, b.ballY);
    
    if (b.ballX > batX-50 && b.ballX < batX+50) {
      if (d < 25) {
        return true;
      } else {
        return false;
      }
    }
    return false;
  }
}