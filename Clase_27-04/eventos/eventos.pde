int borde; // declaro una variable entera
void setup() {
  size(400, 400);

  mouseX = width/2; // valores iniciales para el mouse...
  mouseY = height/2; // ... en el arranque del programa
  borde = 5;
}
void draw() {
  strokeWeight(borde);
  line(mouseX, mouseY, pmouseX, pmouseY );
  println(borde);
}

void mousePressed() { // se ejecuta el presionar el mouse
  background(255);
}

void keyPressed() { // se ejecuta al presionar alguna tecla
  borde = borde +2;
}
