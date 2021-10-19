class Auto {
  Rueda r;
  float ax, ay, atam;
  float vel;
  color relleno;
  Auto(color prelleno, float patam, float pvel) {
    relleno = prelleno;
    atam = patam;
    vel = pvel;
    ax = random(width);
    r = new Rueda(vel);
    ay = random(atam, height/2);
  }
  void dibujar() {
    fill(relleno);
    rect(ax, ay, atam, atam/2);
    r.dibujarRueda(ax, ay+atam/2, atam/3); // rueda izquierda
    r.dibujarRueda(ax+atam, ay+atam/2, atam/3); // rueda derecha
  }
  void mover() {
    /*if (ax>width) {
     ax = random(-100);
     }*/
    ax = ax>width? -100 : ax; // esto es otra forma de hacer un if/else

    ax += vel;
  }
}
