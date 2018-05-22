float time = 0.0;
float ptime = 0.0;
float pnoiseNum = 0.0;

void setup(){
  size(300,300);
}

void draw(){
  float noiseNum = noise(time);
  println(noiseNum);
  time += 0.5;
  
  line(time,50*noiseNum+height/2,ptime,pnoiseNum*50+height/2);
  ptime = time;
  pnoiseNum = noiseNum;
  
}