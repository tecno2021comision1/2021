/*utilizamos 3 instancias de la clase SoundFile:
 una para el derribo de las naves, otra para cuando una nave escapa de la ventana y otra como música de fondo*/



import processing.sound.*;

SoundFile navePerdida, explosion, fondo;
Juego game;
void setup() {
  size(800, 600);
  game = new Juego();
  navePerdida = new SoundFile(this, "perdida.mp3"); // sonido cuando se escapa una nave
  explosion = new SoundFile(this, "explota.mp3"); // sonido cuando derribamos
  fondo = new SoundFile(this, "musicaFondo.mp3"); // música de fondo. Reproduce permanentemente
  // amp() admite valores de 0 (silencio) a 1 (volúmen total);
  fondo.amp(0.8); // con amp() configuro el volúmen; 
  fondo.loop(); // reproduce automàticamente el
}
void draw() {
  background(0);
  game.dibujarJuego();

  if (keyPressed) {
    game.moverPersonaje(keyCode);
  }
}

void keyPressed() { // separo el disparo del movimiento del cañón
  game.disparar(keyCode);
}
