float noiseNum ;
float time;
void setup(){
  size(300,300);
  time = 0.0;
}

void draw(){
  background(255);
  ellipseMode(CENTER);
  
  noiseNum = noise(time);
  fill(0);
  ellipse(width/2+10*noiseNum,height/2+10*noiseNum,100,100);
  
  time += 0.1;
}