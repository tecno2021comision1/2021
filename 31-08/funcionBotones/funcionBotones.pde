color relleno = color(255);
void setup() {
  size(500, 500);
}
void draw() {
  background(0);
  fill(0, 0, 255);
  rect(50, 50, 100, 50);
  rect(width-150, 50, 100, 50);
  fill(relleno);
  ellipse(width/2, height/2, 100, 100);
}
void mousePressed() {
  if (botonPressed(mouseX, mouseY, 50, 50, 100, 50)) { // boton izquierdo
    relleno = color(255, 0, 0);
  }
  if (botonPressed(mouseX, mouseY, width-150, 50, 100, 50)) { // boton derecho
    relleno = color(0, 255, 0);
  }
}

boolean botonPressed(int mx, int my, int px, int py, int ancho, int alto) {// mouse, ubicacion y tamaño
  boolean presionado = mx>px && mx<px+ancho && my>py&&my<py+alto == true;
  return presionado;
}
