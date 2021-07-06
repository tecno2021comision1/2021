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
      float relleno = map(i+j, 0, cant*2, 0, 255);
      fill(0, relleno, 0);
      strokeWeight(5);
      float distan = dist(mouseX, mouseY, i*tam, j*tam);
      float disMaxima = dist(0, 0, width, height);
      float borde = map(distan, 0, disMaxima, 255, 50); 
      stroke(borde, 0, 0);
      rect(i*tam, j*tam, tam, tam);

      fill(255);
      text((i+j), i*tam+tam/2, j*tam+tam/2);
    }
  }
}
