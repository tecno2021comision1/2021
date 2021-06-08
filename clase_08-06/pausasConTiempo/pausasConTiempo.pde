// como hacer pausa en una figura
// entre el segundo 2 y el 4 del programa
int px, py;
boolean seMueve;
void setup() {
  size(400, 400);
  py = 100;
  seMueve = true;
}
void draw() {
  background(255);
  rect(px, py, 100, 50);
  if (seMueve== true) { // se ejecuta según el estado de seMueve
    px ++;
  }
  if (frameCount>120  && frameCount<=240) { // pausa de 2 segundos
    seMueve = false; // detenemos el movimiento de la figura
  } else {
    seMueve = true; // vuelve a true (se puede mover la figura)
  }
  println(frameCount);
}
