class Cell {
  float x;
  float y;
  float angle;

  Cell(float x, float y, float angle) {
    this.x = x;
    this.y = y;
    this.angle = angle;
  }
  
  void oscillate(){
   this.angle += 0.1; 
  }
  void display() {
    stroke(255);
    fill(127+127*sin(this.angle));
    rect(this.x, this.y, 20, 20);
  }
}