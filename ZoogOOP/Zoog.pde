class Zoog {
  float x;
  float y;
  
  Zoog(float x, float y) {
    this.x = x;
    this.y = y;
  }
  
  void jiggle(){
    this.x = this.x + random(-2,2);
    this.y = this.y + random(-2,2);    
  }


  void display() {
    ellipseMode(CENTER);
    rectMode(CENTER);
    // Zoog's body
    fill(150);
    rect(100+this.x, 120+this.y, 25, 50);

    // Zoog's Head
    fill(255);
    ellipse(100+this.x, 70+this.y, 60, 60);

    // Zoog's Eyes
    stroke(255);
    fill(0);
    ellipse(80+this.x, 70+this.y, 10, 20);
    ellipse(120+this.x, 70+this.y, 10, 20);

    // Zoog's legs
    stroke(0);
    line(88+this.x, 145+this.y, 75+this.x, 160+this.y);
    line(113+this.x, 145+this.y, 126+this.x, 160+this.y);
  }
}