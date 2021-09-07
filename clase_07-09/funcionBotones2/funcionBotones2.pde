color relleno = color(255);
void setup() {
  size(500, 500);
}
void draw() {
  background(0);

  //rect(50, 50, 100, 50); // boton izquierdo
  boton(50, 50, 100, 50);
  boton(width-150, 50, 100, 50);
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
 /// nuestras funciones
void boton(int px, int py, int ancho, int alto) { // dibuja cada boton
  if (botonOver(mouseX, mouseY, px, py, ancho, alto)) {
    fill(0, 150, 250);
  } else {
    fill(0, 0, 255);
  }
  rect(px, py, ancho, alto, alto/4);
}

boolean botonPressed(int mx, int my, int px, int py, int ancho, int alto) {// mouse, ubicacion y tamaño
  boolean presionado = mx>px && mx<px+ancho && my>py&&my<py+alto == true;
  return presionado;
}

boolean botonOver(int mx, int my, int px, int py, int ancho, int alto) {
  if (mx>px && mx<px+ancho && my>py&&my<py+alto) {
    return true;
  } else {
    return false;
  }
}
