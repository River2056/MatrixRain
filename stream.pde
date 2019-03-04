class Stream {
ArrayList<Char> chars;
int numChar;
int speed;
int charSize = 18;

  Stream(int tempX) {
    chars = new ArrayList<Char>();
    
    numChar = round(random(10, 50));
    
    speed = round(random(5, 20));
    
    for(int i = 0 ; i < numChar*charSize ; i+=charSize) {
      chars.add(new Char(tempX, i));
    }
  }
  
  void update() {
    for(int i = 0 ; i < chars.size() ; i++) {
      // how we pick colors
      float alpha = map(i, 0, chars.size()-1, 50, 255);
      fill(0, 250, 80, alpha);
      if(i == chars.size()-1){
        fill(250, 255, 250);
      }
      chars.get(i).show();
      
      // move characters
      if(frameCount % speed == 0) {
        chars.get(i).y += charSize;
        
        // character stays, if 0 new char
        if(i == chars.size()-1) {
          chars.get(i).getRandomChar();
        } else {
          chars.get(i).theChar = chars.get(i+1).theChar;
        }
      }
      
      
      
      // change the character randomly
      if(random(1) < 0.001) {
        chars.get(i).getRandomChar();
      }
      
    }
    
    // this checks if the streams goes over
    if(chars.get(0).y > height) {
      for(int i = 0 ; i < chars.size() ; i++) {
        chars.get(i).y = ((chars.size()-1)-i) * -charSize;
      }
    }
    
    
  }
  
}
