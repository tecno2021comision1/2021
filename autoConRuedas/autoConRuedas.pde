Auto auto1, auto2;
void setup() {
  size(800, 600);

  //color prelleno, float patam, float pvel) << parámetros a pasar en el constructor
  auto1 = new Auto(color (255, 255, 0), 100, 3);
  auto2 = new Auto(color (0, 0, 255), 60, 1);
}
void draw() {
  background(255);

  auto1.dibujar();
  auto2.dibujar();
  auto1.mover();
  auto2.mover();
}
