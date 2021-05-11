void setup() {
  size(400, 400);
  background(255);
}
void draw() {
  if (mouseX < 200 && mouseY < 200) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}
