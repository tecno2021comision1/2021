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
      colorMode(HSB, width, 100, 100);
      float relleno = map(i+j, 0, cant*2, 0, width);
      fill(relleno, 100, 100);
      strokeWeight(5);
      float distan = dist(mouseX, mouseY, i*tam, j*tam);
      float disMaxima = dist(0, 0, width, height);
      float borde = map(distan, 0, disMaxima, width, 50); 
      stroke(borde, 100, 1000);
      rect(i*tam, j*tam, tam, tam);

      fill(133, 0, 100); // blanco en HSB
      text((i+j), i*tam+tam/2, j*tam+tam/2);
    }
  }
}
