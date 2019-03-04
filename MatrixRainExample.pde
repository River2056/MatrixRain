PFont theFont;
ArrayList<Stream> streams;
int charSize = 18;
boolean recording = false;

void keyPressed() {
  if(key == 'r' || key == 'R') {
    recording = !recording;
  }
}

void setup() {
  fullScreen();
  
  //size(1280, 720, P2D);
  
  theFont = createFont("Arial Unicode MS", charSize);
  textFont(theFont);
  textAlign(CENTER, TOP);
  
  
  //println(Integer.parseInt("3041", 16));
  //println(Integer.parseInt("3094", 16));
  //println(Integer.parseInt("0021", 16));
  //println(Integer.parseInt("007A", 16));
  
  streams = new ArrayList<Stream>();
  
  for(int i = 10 ; i < width ; i+=charSize) {
    streams.add(new Stream(i));
  }
  
  
  
}

void draw() {
  background(0, 10, 0);
  for(Stream s: streams) {
    s.update();
  }
  if(recording){
    saveFrame("output/matrix_####.tif");
  }
  
}
