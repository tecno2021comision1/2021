// la cantidad de figuras cambia automáticamente
int cant = 10;
int tam;
void setup() {
  size(500, 500);
  tam = width/cant;
}
void draw() {
  background(0);
  if (frameCount%60==0) {
    if (cant>0) {
      cant --;
    }
  }
  for (int i=0; i<cant; i++) {
    rect(i*tam, 0, tam, 50+mouseY);
  }
  println(cant);
}
void mousePressed() { // esto es una versión con evento de mouse
  if (cant>0) {
    cant --;
  }
}
