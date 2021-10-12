class Bala {
  int bx, by, btam; // posiciòn y tamaño de la bala
  boolean disparada; // para saber si se disparó o no
  Bala(int bx_, int by_, boolean disparada_) { // paràmetros para crear un punto de origen
    bx = bx_;
    by = by_;
    btam = 20;
    disparada = disparada_;
  }
  void dibujar() {
    fill(0, 255, 0);
    ellipse(bx, by, btam/2, btam);
  }

  void mover() {
    if (disparada) {
      by -=10; // se mueve la bala
    }
    if (by<0) {

      disparada = false;
    }
  }

  void disparaBala() {
    disparada = true;
  }

  void desactivar() { // usamos esto para reiniciar la bala
    disparada = false;
  }
} 
