int px;
void setup() {
  size(500, 500);
}
void draw() {
  background(255);
  /*line(100, 100, 300, 100);
   line(300, 100, 300, 200);
   line(300, 200, 100, 200);
   line(100, 200, 100, 100);*/
  px++;
  if (px>width) {
    px=0;
  }
  for (int i=0; i<10; i++) {
    cuadrado(i*50, 200, 50, height);
  }
  cuadrado(100, 100, 200, 100);
  cuadrado(100, 300, 100, 100);
  cuadrado(300, 300, 100, 100);
  cuadrado(px, 0, 50, 50);
}
void cuadrado(int px, int py, int ancho, int alto) {
  line(px, py, px+ancho, py); // linea superior
  line(px+ancho, py, px+ancho, py+alto); // linea derecha

  line(px, py, px, py+alto); // linea izqueirda
  line(px, py+alto, px +ancho, py+alto); // linea inferior
}
