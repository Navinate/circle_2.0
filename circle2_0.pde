float t = 0;
float x1,y1, x2,y2, red, green, blue;
PVector center;
int numOfQuads = 5;
float size = 350;

void setup() {
  size(1000,1000);
  center = new PVector(width/2, height/2);
  frameRate(60);
}

void draw() {
  background(#222222);

  
  for( float i = 0; i < numOfQuads; i ++) {
    
    x1 = center.x + sin(t-0.5*i)*size/2;
    y1 = center.y + cos(t-0.5*i)*size/2;

    x2 = center.x + cos(t-0.5*i)*size;
    y2 = center.y + sin(t-0.5*i)*size;
    
    red = map(x2, 0,width, 0,255);
    green = map(y2, 0, height, 0,255);
    blue = map(i, 0, numOfQuads, 0,255);
    
    stroke(red,green,blue);
    strokeWeight(200);
    line(x1,y1,x2,y2);
  }
  
  //time increment
  t+= 0.015;
  if(t > 7) {
    noLoop();
  }
  saveFrame();
}
