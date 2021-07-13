// url del video //<< IMPORTANTEEEEEE
int cant = 5;
int tam;
void setup() {
  size(500, 500);
  tam = width/cant;
}
void draw() {
  background(255);
  //float vel = map(mouseX, 0, width, 1, 5);
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      push();
      translate(i*tam+tam/2, j*tam+tam/2); 
      float vel = map(i+j, 0, cant*2, 1, 10);
      rotate(radians(frameCount*vel));
      fill(0);
      ellipse(0, 0, tam, tam);
      fill(200);
      ellipse(0, 0, tam, tam/2);
      pop();
    }
  }
}
