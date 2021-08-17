PImage [] horse = new PImage[7];
int px = 100;
int numImag;
void setup() {
  size(600, 400);
  // horse[0] = loadImage("caballo0.png");
  // horse[1] = loadImage("caballo1.png");
  for (int i=0; i<horse.length; i++) {
    horse[i] = loadImage("caballo"+i+".png");
  }
}
void draw() {
  background(255);
  if (frameCount%6==0) { // 
    if (numImag<horse.length-1) {
      numImag ++;
    } else {
      numImag = 0;
    }
  }


  image(horse[numImag], px, height/2);
  if (px>width) {
    px = -horse[numImag].width; // reinicio fuera de campo
  }
  px+=2;
}
void mousePressed() {
  if (numImag<horse.length-1) {
    numImag ++;
  } else {
    numImag = 0;
  }
}
