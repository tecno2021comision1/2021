int cant = 4;
int tam;
void setup() {
  size(600, 600);
  tam = width/cant;
}
void draw() {
  background(0);
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      rect(i*tam+tam/2, j*tam+tam/2, tam, tam);
      int cantCuad = 20;
      for (int c=0; c<cantCuad; c++) {
        float ancho = map(c, 0, cantCuad-1, tam, 2);
        // funcion constrain() // limita valores
        float posx = map(c, 0, cantCuad-1, i*tam+tam/2, constrain(mouseX, i*tam, i*tam+tam  ) );
        float posy = map(c, 0, cantCuad-1, j*tam+tam/2, constrain(mouseY, j*tam, j*tam+tam  ) );
        float verde = map(c, 0, cantCuad-1, 0, 255);
        stroke(0, verde, 0);
        strokeWeight(1);
        noFill();
        rectMode(CENTER);
        rect(posx, posy, ancho, ancho);
      }
    }
  }
}
