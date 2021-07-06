int cant = 10;
int ancho, alto;
void setup() {
  size(500, 500);
  textSize(18);
  textAlign(CENTER, CENTER);
  surface.setResizable(true); // <<<< INCORPORAR AL TRABAJO
}
void draw() {
  background(255);
  ancho = width/cant;
  alto = height/cant;
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      float mx = int(map(mouseX, 0, width, 0, cant)); // proporción entre mouseX y cant de columnas
      float my = int(map(mouseY, 0, height, 0, cant));// proporción entre mouseY y cant de filas
      if (mx==i && my==j) { // si coincide el valor
        fill(0, 0, 255); // rellena azul
      } else { // el resto
        fill(255); // rellena blanco
      }
      rect(i*ancho, j*alto, ancho, alto);
      println(mx);
    }
  }
}
