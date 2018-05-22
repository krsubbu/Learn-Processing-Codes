import processing.video.*;


Capture video;
// color type variable is decclared to store the track colour info 
color trackingColor;


void setup(){
  size(640,360);
  background(0);
  video = new Capture(this,width,height);
  video.start();
  trackingColor = color(255,0,0); // Initial Colour to track in the video if no colour is set 
}    

void captureEvent(Capture video){
  video.read();
}

void mousePressed(){
  // Track the colour which is below mouse cursors's x and y location
  trackingColor =  video.get(mouseX,mouseY);
}

void draw(){
  int currentX=-50;    // initail circle x location so no hovering on screen unless a colour is selected by mouse
  
  int currentY=0;  // initial circle y location
  float worldRecord = 500;
  image(video,0,0);
  video.loadPixels();
  
  for(int row=0; row< width; row++){
    for(int col=0; col<height; col++){
       int index =  row + col * width;
      // taking the pixels red,green and blue value 
       float r1 = red(video.pixels[index]);
       float g1 = green(video.pixels[index]);
       float b1 = blue(video.pixels[index]);
      //taking the track colour red,green and blue values 
       float r2 = red(trackingColor);
       float g2 = green(trackingColor);
       float b2 = blue(trackingColor);
       // finding the distance square between the two using my own distance function
       // distance provide a 3dimenstion space in which colour is same in small distances
       float d = distance(r1,g1,b1,r2,g2,b2);
       //comparing the current distance with worldRecord set value 500
       // and finding the least value of d by assinging it to worldRecording value
       // Also recording the currentX and Current Y location of the pixel whose distance value is least
       // This means that colour is similar to the track colour
       if(d <worldRecord){
         worldRecord = d;
           currentX = row;
           currentY = col;
       }
    }
  }
  rectMode(CENTER);
  // filling the rectangle with the colour we want to track
  fill(trackingColor);
  stroke(0);
  //rectangle is drawn at currentX and currentY
  rect(currentX,currentY,30,30);
  //Just for fun resizing the video by tracking the colour and using it as a mouse
  //image(video,0,0,currentX,currentY);
}

// distance square function defined because it is fast as compared to dist which uses squareroot .
float distance(float r1,float g1,float b1,float r2,float g2,float b2){
 return ((r1-r2)*(r1-r2)+(g1-g2)*(g1-g2)+(b1-b2)*(b1-b2));
}