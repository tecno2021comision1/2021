color relleno; // variable de tipo color
void setup() {
  size(400, 400);
  background(255);
  relleno = color(255, 255, 255);
  
}
void draw() {
  background(255);
  fill(0, 0, 255);
  rect(250, 50, 100, 50); // un botón azul
  fill(relleno);
  ellipse(200, 200, 100, 100);
}

void mousePressed() { // si presionamos el mouse
// y dentro de los límites del botòn
  if (mouseX>= 250 && mouseX < 350 && mouseY <= 100 && mouseY >50 ) {
    relleno = color(255, 0, 0); // cambia el color de la figura
  }
}
void keyPressed() { // volvemos la figura a relleno blanco
  relleno = color(255, 255, 255);
}
