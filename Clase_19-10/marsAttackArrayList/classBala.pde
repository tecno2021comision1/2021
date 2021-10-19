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


/*class Bala {
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
 
 void mover() {
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
 }*/
