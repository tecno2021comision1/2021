int px, py;
void setup() {
  size(400, 400);
  px = width/2;
  py = height/2;
}
void draw() {
  background(255);
  rect(px, py, 50, 50);
  println(keyCode);
}

void keyPressed() {
  if (keyCode==RIGHT || keyCode == 'd' || key == 'D' ) {
    px ++;
  }
  if (keyCode==LEFT || key == 'a' || key == 'A') {
    px --;
  }
  if (keyCode==UP || key == 'w' || key == 'W') {
    py --;
  }
  if (keyCode==DOWN || key == 's' || key == 'S') {
    py ++;
  }

}
