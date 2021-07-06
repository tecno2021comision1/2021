int cant = 10;
int tam;
void setup() {
  size(500, 500);

  surface.setResizable(true); // <<<< INCORPORAR AL TRABAJO
}
void draw() {
  background(255);
  tam = width/cant;
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      rect(i*tam, j*tam, tam, tam);
    }
  }
}
