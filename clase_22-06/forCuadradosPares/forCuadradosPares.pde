int cant = 10;
int tam;
void setup() {
  size(500, 500);
  tam = width/cant;
}
void draw() {
  background(255);

  for (int i=0; i<cant; i++) {
    if (i%2==0) {
      fill(255, 0, 0);
    } else {
      fill(0, 0, 255);
    }
    rect(i*tam, 0, tam, tam);
  }
}
