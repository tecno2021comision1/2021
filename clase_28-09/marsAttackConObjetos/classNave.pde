class Nave {
  float nx, ny, ntam, nvel; // propiedades de la nave
  Nave() {
    ntam = random(30, 50); 
    nx =-ntam;
    ny = random(ntam/2, height/2);
    nvel = random(2, 4);
  }
  void dibujarNave() {
    //--- dibujo de la nave y comportamiento ---//
    fill(150);
    ellipse(nx, ny, ntam, ntam*0.8); //dibujamos la cabina de la nave
    fill(0, 255, 0);
    triangle(nx-ntam, ny, nx+ntam, ny, nx, ny+ntam/2); // el cuerpo principal
  }
  void moverNave() {
    if (nx>width+ntam) { // si sale de la ventana, la reiniciamos
      nx =-ntam;
      ny = random(ntam/2, height/2);
      ntam = random(30, 50);
      nvel = random(2, 4);
    }
    nx+=nvel; // con esto se mueve
  }
}
