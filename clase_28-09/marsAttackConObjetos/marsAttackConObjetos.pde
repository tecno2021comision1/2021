Canion c;
Nave nave;
Bala b;
void setup() {
  size(800, 600);
  c = new Canion();
  nave = new Nave();
  b = new Bala(width/2, height);
}
void draw() {
  background(255);
  c.dibujarCanion();
  nave.dibujarNave();
  nave.moverNave();
  b.dibujar();
  b.mover();
  if (keyPressed) {
    c.moverCanion(keyCode);
  }
  println("la bala está " + b.balaDisparada);
}
void mousePressed() {
  //b.balaDisparada = true; // accedo a la propiedad balaDisparada
  b.disparar(); // accedo al método disparar();
}
