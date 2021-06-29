int cant = 10;
int tam;
void setup() {
  size(500, 500);
  tam = width/cant;
}
void draw() {
  background(255);
  for (int x=0; x<cant; x++) {
    for (int y =0; y<cant; y++) {
      rect(x*tam, y*tam, tam, tam);
    }
  }
}
