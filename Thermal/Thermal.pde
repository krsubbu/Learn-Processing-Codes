import processing.video.*;

Capture video;

void setup(){
  size(640,480);
  background(0);
  video = new Capture(this,width,height);
  video.start();
  printArray(Capture.list());
}

void captureEvent(Capture video){
 video.read(); 
}

void draw(){
 //image(video,0,0); 
 loadPixels();
 video.loadPixels();
 for(int row=0; row<width; row++){
   for(int col=0; col<height; col++){
     int index = row + col*width;
     float bright = brightness(video.pixels[index]);
     //float r = red(video.pixels[index]);
     //float g = green(video.pixels[index]);
     //float b = blue(video.pixels[index]);
     //int avg = (int)(r+g+b)/3;
     
     if(bright< 255 && bright >= 186){
       pixels[index] = color((1-((255-bright)/69))*255,(1-((255-bright)/69))*255,(1-((255-bright)/69))*255);
     }
     if(bright< 186 && bright >= 124){
       pixels[index] = color((1-((186-bright)/62))*255,(1-((186-bright)/62))*255,0);
     }
     if(bright< 124 && bright >= 62){
       pixels[index] = color(0,0,(1-((124-bright)/62))*255);
     }
     if(bright< 62){
       pixels[index] = color(0,(1-((62-bright)/62))*255,0);
     }
     
    /* if(avg>200)
       pixels[index] = color(avg,0,0);
     else
       pixels[index] = color(0,0,avg);
   }*/
 }
 updatePixels();
}
}