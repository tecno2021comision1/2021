int cant = 10;
int px;
int tam;
void setup() {
  size(400, 400);
  tam = width/cant;
  background(255);
}
void draw() {
  if (px<width) {
    rect(px, 0, tam, tam);
    px += tam;
  }

//-- dos maneras diferentes de resolver lo mismo --//

  for (int px=0; px<width; px+= tam) {
    rect(px, 100, tam, tam);
  }

  for (int px=0; px<cant; px++) {
    rect(px*tam, 200, tam, tam);
  }
}
