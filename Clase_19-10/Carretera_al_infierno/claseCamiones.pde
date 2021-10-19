class Camion {
  PImage camion;
  float cx, cy, cmov, cdir, ctam;
  Rueda rueda;
  boolean activo;
  float bder, bizq;
  Camion(float cx_) {
    camion = loadImage("camion.png");
    cx = cx_;
    cy = random(-200, - 400);
    cdir = random(2, 4);
    ctam = 60;
    rueda = new Rueda();
    activo = true;
    cmov = random(0.5, 1);
    bder = cx+ctam;
    bizq = cx-ctam;
  }
  void dibujar() {
    fill(0, 0, 255);
    //rect(cx, cy, ctam, ctam*2);
    image(camion, cx, cy, ctam, ctam*2);

    rueda.dibujar(cx, cy+ctam/2, ctam/2, cdir );
    rueda.dibujar(cx, cy+ctam*1.4, ctam/2, cdir );
  }
  void moverCamion(int nivel) {
    if (nivel==1) {
      cdir *= 1;
    } else {
      cdir *= 1.002;
    }


    if (cx>bder || cx <bizq) {
      cmov *= -1;
    }

    if (cy > height+ctam/2) {
      cy = random(-200, - 400);
      activo = true;
    }
    cy += cdir;
    cx += cmov;
  }
}
