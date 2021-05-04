PImage fondo, gatito, backg;
void setup() {
  size(800, 700);
  fondo = loadImage("cuadricula.jpg");
  backg = loadImage("back.jpg");
  gatito = loadImage("gatito.jpg");

  //imageMode(CENTER);
}
void draw() {
  // podemos usar una imagen como fondo siempre que sea del mismo tamaño de la ventana
  background(backg); //
  image(fondo, 0, 0, 400, 200);
  image(gatito, mouseX, mouseY, 300, 300);
}

void keyPressed() {
  save("back.jpg");
}
