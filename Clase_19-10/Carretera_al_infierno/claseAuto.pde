class Auto {
  PImage autito;
  int px, py, tam;
  Auto (int px_, int py_, int tam_) {
    px = px_;
    py = py_;
    tam = tam_;
    autito = loadImage("autito.png");
  }
  void dibujar() {
    fill(255, 0, 0);
    //rect(px, py, tam, tam*2);
    image(autito, px, py, tam, tam*2);
  }
  void moverDerecha() {
    if (px<width-tam/2) {
      px += 5;
    }
  }
  void moverIzquierda() {
    if (px>tam/2) {
      px -= 5;
    }
  }
} 
