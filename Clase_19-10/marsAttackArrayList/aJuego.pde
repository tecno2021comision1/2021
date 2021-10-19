/*Borramos las instancias individuales de Bala y Nave. 
Ahora hay solo arreglos para las naves y el ArrayList para las balas */


class Juego {
  ArrayList <Bala> cargador; // declaramos el ArrayList
  Canion c;
  Nave nave; // instancia individual, no usada en el juego
  // Bala b;
  int puntos;

  Nave [] naves = new Nave[5];

  Juego() {
    cargador = new ArrayList();
    c = new Canion();
    nave = new Nave();
    //b = new Bala(width/2, height);
    textSize(30);
    for (int i=0; i<naves.length; i++) {
      naves[i] = new Nave(50+i*height/6);
    }
  }

  void dibujarJuego() {

    for (int i = cargador.size()-1; i > 0; i--) { 
      Bala unaBala = cargador.get(i);
      if (!unaBala.disparada) {
        cargador.remove(i);
      }
    }
    for (Bala estaBala : cargador) {
      estaBala.dibujar();
      estaBala.mover();
    }

    c.dibujarCanion();


    for (int i=0; i<naves.length; i++) {
      naves[i].dibujarNave();
      naves[i].moverNave();
    }

    derribarNave();
    fill(255, 255, 0);
    text(puntos, 50, 50);
  }
  void moverPersonaje(int tecla) {
    c.moverCanion(tecla);
  }

  void derribarNave() {
    for (Bala estaBala : cargador) { // el for de naves debe "revisarse" dentro de este for
      for (int i=0; i<naves.length; i++) {

        float distancia = dist(estaBala.bx, estaBala.by, naves[i].nx, naves[i].ny);
        if (distancia<naves[i].ntam/2+estaBala.btam/2) {

          naves[i].derribar();
          puntos++;
          explosion.amp(0.2);
          explosion.play(); // al alcanzar una nave reproduce el sonido
        }
      }
    }
  }


  // agregar un mètodo que cuente las naves perdidas.

  void disparar(int tecla) {
    if (tecla==UP) {
      cargador.add(new Bala(c.cx, c.cy, true)); // accedo al método disparar();
    }
  }
}
