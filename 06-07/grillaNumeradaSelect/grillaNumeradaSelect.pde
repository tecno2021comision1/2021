int cant = 10;
int tam;
void setup() {
  size(500, 500);
  textSize(18);
  textAlign(CENTER, CENTER);
  surface.setResizable(true); // <<<< INCORPORAR AL TRABAJO
}
void draw() {
  background(255);
  tam = width/cant;
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      if (mouseX>i*tam && mouseX <i*tam+tam && mouseY>j*tam && mouseY<j*tam+tam) {
        fill(0, 0, 255);
      } else {
        fill(255);
      }
      rect(i*tam, j*tam, tam, tam);
    }
  }
}
