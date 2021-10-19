Juego juego; // instancia de la clase principal que controla al resto

void setup() {
  size(400, 600);
  juego = new Juego(5); // le paso por parámetros cuántos enemigos quiero cargar
}
void draw() {
  //background(200);

  juego.dibujarJuego();

  if (keyPressed) {

    juego.moverAuto(keyCode);
  }
}
void keyPressed() {
  juego.comenzar(keyCode);
}
void mousePressed() {
  juego.instrucciones();
}
