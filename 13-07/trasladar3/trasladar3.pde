// url del video //<< IMPORTANTEEEEEE
int segs;
void setup() {
  size(500, 500);
}
void draw() {
  background(255);
  float vel = map(mouseX, 0, width, 1, 5);
  push();
  translate(width/2, height/2);// traslada el punto referencia de la ventana
  rotate(radians(frameCount*vel));
  rectMode(CENTER);
  rect(0, 0, 50, 50); // rota en su eje
  ellipse(100, 0, 50, 50); // rotando a 100px del eje
  pop();
}
