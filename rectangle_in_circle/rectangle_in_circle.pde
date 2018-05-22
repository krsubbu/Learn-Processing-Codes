float x;
float y;
float r = 50;

void setup() {
  size(300, 300);
}

void draw() {
  background(255);
  float arclength =0; //arclength a box must travel in each iteration.
  translate(width/2, height/2);//first translate to center
  noFill();
  stroke(0);
  ellipse(0, 0, 100, 100); //make a circle
  
  for (int box=0; box<10; box++) { //iterate same step for 10 boxes
    arclength += 10;//for 1st box arclength = 10
    float theta = arclength/r; // corresponding to arclength ,we calculate theta
    pushMatrix();
    rectMode(CENTER);  // simple step to calculate x and y which lie on circle and then translate to that x,y to draw rect
    
    x = r * cos(theta);
    y = r * sin(theta);
    line(0,0,x,y);
    translate(x, y);
    fill(150, 25);
    stroke(0);
    //rotate(theta);// rotate throught each iteration 
    rect(0, 0, 20, 20);
    popMatrix();
    arclength +=10; // again increase arclength for second box
  }

  noLoop();
}