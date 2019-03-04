class Char {
  char theChar;
  int x;
  int y;
  Char(int tempX, int tempY) {
    x = tempX;
    y = tempY;
    
    getRandomChar();
  }
  
  void show() {
    text(theChar, x, y);
  }
  
  void getRandomChar() {
    int charType = round(random(1));
    if(charType == 0) {
      int rndChar = round(random(12353, 12542));
      theChar = char(rndChar);
    } else if(charType == 1) {
      int rndChar = round(random(33, 122));
      theChar = char(rndChar);
    }
  }


}
