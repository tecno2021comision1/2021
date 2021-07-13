int cant = 6;
int tam;
void setup() {
  size(600, 600);
  tam = width/cant;
}
void draw() {
  background(0);
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      rect(i*tam, j*tam, tam, tam);
      int cantCuad = 10;
      for (int c=0; c<cantCuad; c++) {
        float ancho = map(c, 0, cantCuad-1, tam, 2);

        float verde = map(c, 0, cantCuad-1, 255, 20);
        fill(0, verde, 0);
        rect(i*tam, j*tam, ancho, ancho);
      }
    }
  }
}
