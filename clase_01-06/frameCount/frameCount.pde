int segundos;
int diez=10;
float ten=10;
int modulo = 10;
int py;

void setup() {
  size(400, 400);
  textSize(30);
  py = 150;
}
void draw() {
  background(0);
  fill(255);
  text(segundos, 50, 50);
  if (frameCount%60 == 0) { // esto revisa si el conteo de frames es múltiplo de 60
    segundos++; // en 60,120,180,240,300, 360, etc suma 1 a segundos
  }
  float opaco = map(frameCount, 0, 600, 0, 255); // usamos frameCount en el map()
  fill(255, opaco);
  text("Esto es un ejemplo", 50, py);
  if (frameCount>600) { // si supera cierto tiempo (10 segs)
    py++; // comienza a moverse
  }
  println(diez/3); // división nùmero entero
  println(ten/3); // división con decimales
  println(modulo%3); // módulo devuelve el resto de la división (lo que sobra)
}
