int cant = 10;
int tam;
void setup() {
  size(500, 500);
  tam = width/cant;
}
void draw() {
  background(255);
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      if (mouseX>i*tam && mouseX<i*tam+tam && mouseY>j*tam && mouseY<j*tam+tam) {
        fill(255, 0, 0);
      } else {
        fill(255);
      }
      rect(i*tam, j*tam, tam, tam);
    }
  }
}
