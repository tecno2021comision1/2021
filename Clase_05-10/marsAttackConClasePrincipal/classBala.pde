class Bala {
  int bx, by, btam; // propiedades proyectil
  boolean balaDisparada;
  Bala(int bx_, int by_ ) {
    bx = bx_;
    by = by_;
    balaDisparada = false;
    btam = 30;
  }
  void dibujar() {
    fill(100);
    ellipse(bx, by, btam, btam); // dibujamos la bala
  }

  void mover(int pbx) {
    if (balaDisparada && by> -btam/2) {
      by -= 20;
    } else {
      by = height;
      bx = pbx;
      balaDisparada = false;
    }
  }

  void dispararBala() {
    balaDisparada = true;
  }
}
