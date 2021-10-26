class Principal {
  int pantalla;
  Fondo f;
  Boton botIzq, botDer;
  Principal() {
    f = new Fondo();
    pantalla = 0;
    botIzq = new Boton(50, 50, 100, 50);
    botDer = new Boton(650, 50, 100, 50);
  }
  void dibujar() {
    f.dibujarFondo(pantalla);
    if (pantalla == 0) {
      botDer.dibujarBoton(0, 1, "Comenzar");
    }

    if (pantalla == 1) {
      botIzq.dibujarBoton(1, 0, "volver");
      botDer.dibujarBoton(1, 2, "Ir a ..");
    }
    if (pantalla == 2) {
      botIzq.dibujarBoton(2, 1, "regresar");
      botDer.dibujarBoton(2, 3, "Elegir ...");
    }
    if (pantalla == 3) {
      botIzq.dibujarBoton(3, 0, "Inicio");
      botDer.dibujarBoton(3, 5, "Elegir ...");
    }
    if (pantalla == 4) {
      botDer.dibujarBoton(4, 6, "Seguir ...");
    }
    if (pantalla == 5) {
      botIzq.dibujarBoton(5, 4, "Anterior");
      botDer.dibujarBoton(5, 8, "Seguir ...");
    }
    if (pantalla == 6) {
      botDer.dibujarBoton(6, 8, "Seguir ...");
    }
    if (pantalla == 8) {
      botIzq.dibujarBoton(8, 0, "Inicio");
    }
  }
  void detectarBotones() {
    if (botIzq.botonPresionado(50, 50, 100, 50) && pantalla == botIzq.actual  ) {
      pantalla = botIzq.proxima;
    }
    if (botDer.botonPresionado(650, 50, 100, 50) && pantalla == botDer.actual) {
      pantalla = botDer.proxima;
    }
  }
}
