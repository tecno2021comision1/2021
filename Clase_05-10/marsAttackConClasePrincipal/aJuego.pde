class Juego {
  Canion c;
  Nave nave;
  Bala b;
  int puntos;

  Nave [] naves = new Nave[5];

  Juego() {
    c = new Canion();
    nave = new Nave();
    b = new Bala(width/2, height);
    textSize(30);
    for (int i=0; i<naves.length; i++) {
      naves[i] = new Nave(50+i*height/6);
    }
  }

  void dibujarJuego() {
    c.dibujarCanion();
    nave.dibujarNave();
    nave.moverNave();

    for (int i=0; i<naves.length; i++) {
      naves[i].dibujarNave();
      naves[i].moverNave();
    }

    b.dibujar();
    b.mover(c.cx);
    println("la bala está " + b.balaDisparada);
    derribarNave();
    fill(255, 255, 0);
    text(puntos, 50, 50);
  }
  void moverPersonaje(int tecla) {
    c.moverCanion(tecla);
    if (tecla==UP) {
      b.dispararBala();
    }
  }
  void derribarNave() {
    float distan = dist(b.bx, b.by, nave.nx, nave.ny);
    if (distan<nave.ntam/2+b.btam/2) {
      b.balaDisparada = false;
      nave.derribar();
      puntos++;
    }
    for (int i=0; i<naves.length; i++) {
      float distancia = dist(b.bx, b.by, naves[i].nx, naves[i].ny);
      if (distancia<naves[i].ntam/2+b.btam/2) {
        b.balaDisparada = false;
        naves[i].derribar();
        puntos++;
        explosion.amp(0.2);
        explosion.play(); // al alcanzar una nave reproduce el sonido
      }
    }
  }

  // agregar un mètodo que cuente las naves perdidas.

  void disparar() {
    b.dispararBala(); // accedo al método disparar();
  }
}
