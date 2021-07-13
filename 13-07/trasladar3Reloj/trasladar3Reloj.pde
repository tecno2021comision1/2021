// url del video //<< IMPORTANTEEEEEE
int segs;
void setup() {
  size(500, 500);
}
void draw() {
  background(255);
  if (frameCount%60==0) {
    segs ++;
  }
  fill(0);
  textSize(30);
  text(segs, 400, 50);
  push();
  translate(100, 100);// traslada el punto referencia de la ventana
  rotate(radians(segs*6)); // funcion que permite rotar elementos
  fill(200);
  ellipse(0, 0, 100, 100);
  line(0, 0, 0, -50);
  pop();
  translate(300, 100);// traslada el punto referencia de la ventana
  rect(0, 0, 100, 100);
}
