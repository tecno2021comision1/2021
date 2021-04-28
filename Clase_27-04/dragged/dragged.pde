
void setup() {
  size(400, 400);
}
void draw() {
}

void mouseDragged() { // se ejecuta al mantener presionado el mouse
  line(mouseX, mouseY, pmouseX, pmouseY );
}
void keyPressed() {
  background(255);
}
