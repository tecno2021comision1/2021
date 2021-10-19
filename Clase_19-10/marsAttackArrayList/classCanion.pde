class Canion {
  int cx, cy, ctam; // declaro propiedades
  Canion() {
    ctam = 60;
    cx = width/2;
    cy = height-ctam/2;
  }

  void dibujarCanion() {
    rectMode(CENTER);
    fill(0, 0, 255);
    rect(cx, cy, ctam/2, ctam);
  }
  void moverCanion(int tecla) { // agregar parámetro
    if (tecla==RIGHT && cx<width-ctam/4) { // AGREGAR LÍMITE
      cx+=3;
    }
    if (tecla==LEFT && cx>ctam/4) {
      cx-=3;
    }
  }
}
