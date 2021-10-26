class Boton {
  int bx, by, bancho, balto, actual, proxima;
  String textoBoton;

  Boton(int bx_, int by_, int bancho_, int balto_) {
    bx = bx_;
    by = by_;
    bancho = bancho_;
    balto = balto_;
  }
  void dibujarBoton(int actual_, int proxima_, String texto_) {
    actual = actual_;
    proxima = proxima_;
    textoBoton = texto_;
    fill(0, 0, 255);
    rect(bx, by, bancho, balto, balto/4);
    textSize(22);
    fill(255);
    text(textoBoton, bx, by+balto/2);
  }
  boolean botonPresionado(int bx_, int by_, int bancho_, int balto_) {
    bx = bx_;
    by = by_;
    bancho = bancho_;
    balto = balto_;
    boolean presionado = mouseX>bx && mouseX<bx+bancho && mouseY>by && mouseY <by+balto == true; 
    return presionado;
  }
}
