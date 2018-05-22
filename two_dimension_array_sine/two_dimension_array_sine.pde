Cell[][] grid;

void setup() {
  size(500, 500);
  grid = new Cell[width/20][height/20];
  for(int i=0; i<width/20; i++){
    for(int j=0; j<height/20; j++){
      grid[i][j] = new Cell(i*20,j*20,i+j);
    }
  }
}

void draw() {
  background(255);
  
  for(int i=0; i<width/20; i++){
    for(int j=0; j<height/20; j++){
      grid[i][j].display();
      grid[i][j].oscillate();
    }
  }
}