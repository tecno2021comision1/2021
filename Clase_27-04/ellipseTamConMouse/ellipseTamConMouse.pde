void setup() {
  size(600, 300);
}

void draw() {
  background(100);
  noStroke();

  // width obtiene el ancho de la ventana
  // height obtiene la altura de la ventana
  ellipse(width/2, height/2, mouseX, mouseY );

  println(mouseX);
}
