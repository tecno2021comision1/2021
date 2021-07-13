// url del video //<< IMPORTANTEEEEEE
int cant = 5;
int ancho, alto;
void setup() {
  size(500, 500);

  surface.setResizable(true);
}
void draw() {
  background(255);
  ancho = width/cant; // se adapta en tiempo real al estar en el draw()
  alto = height/cant;
  //float vel = map(mouseX, 0, width, 1, 5);
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      push();
      translate(i*ancho+ancho/2, j*alto+alto/2); 
      float vel = map(i+j, 0, cant*2, 1, 10);
      rotate(radians(frameCount*vel));
      fill(0);
      ellipse(0, 0, ancho, alto);
      fill(200);
      ellipse(0, 0, ancho, alto/2);
      pop();
    }
  }
}
