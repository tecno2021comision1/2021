class Rueda {
  float rx, ry, rtam;
  float vel;
  Rueda(float pvel) {
    vel = pvel;
  }

  void dibujarRueda(float prx, float pry, float prtam) {
    rx = prx;
    ry = pry;
    rtam = prtam;
    strokeWeight(2);

    push();
    translate(rx, ry);
    rotate(radians(frameCount*vel)); // rotación + velocidad

    fill(200);
    ellipse(0, 0, rtam, rtam);
    fill(100);
    ellipse(0, 0, rtam/2, rtam/2);
    line(-rtam/2, 0, rtam/2, 0);
    line(0, -rtam/2, 0, rtam/2);
    pop();
  }
}
