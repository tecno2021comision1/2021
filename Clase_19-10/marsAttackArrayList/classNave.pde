class Nave {
  float nx, ny, ntam, nvel; // propiedades de la nave
  boolean naveDerribada;
  Nave() {
    ntam = random(30, 50); 
    nx =random(-width/2, -ntam); 
    ny = random(ntam/2, height/2);
    nvel = random(2, 4);
    naveDerribada = false;
  }

  Nave(float pny) {
    ntam = random(30, 50); 
    nx =random(-width/2, -ntam); 
    ny = pny; // le pasamos por parámetro la ubicacion vertical
    nvel = random(2, 4);
    naveDerribada = false;
  }

  void dibujarNave() {
    //--- dibujo de la nave y comportamiento ---//
    fill(150);
    ellipse(nx, ny, ntam, ntam*0.8); //dibujamos la cabina de la nave
    fill(0, 255, 0);
    triangle(nx-ntam, ny, nx+ntam, ny, nx, ny+ntam/2); // el cuerpo principal
  }
  void moverNave() {
    if (nx>width+ntam || naveDerribada ) { // si sale de la ventana, la reiniciamos
      nx =random(-width/2, -ntam); 
      // ny = random(ntam/2, height/2); // lo eliminamos para que mantenga el valor del constructor
      ntam = random(30, 50);
      nvel = random(2, 4);
      naveDerribada = false;
      navePerdida.play(); // se escapa y suena
    }
    nx+=nvel; // con esto se mueve
  }
  void derribar() {
    naveDerribada = true;
  }
}
