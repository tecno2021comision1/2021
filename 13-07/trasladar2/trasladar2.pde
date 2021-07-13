// url del video //<< IMPORTANTEEEEEE

void setup() {
  size(500, 500);
}
void draw() {
  background(255);
  translate(100, 100);// traslada el punto referencia de la ventana
  rotate(radians(45)); // funcion que permite rotar elementos
  ellipse(0, 0, 100, 100);
  line(0, 0, 0, -50);

  translate(100, 100);// traslada el punto referencia de la ventana
  rect(0, 0, 100, 100);
}
