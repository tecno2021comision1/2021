class Rueda {
  float rx, ry, tam, vel;
  Rueda() {
  }
  void dibujar(float rx_, float ry_, float tam_, float vel_) {
    /*estos parámetros aseguran poder ubicarlos en cualquier parte*/
    rx = rx_;
    ry = ry_;
    tam = tam_;
    vel = vel_;
    pushMatrix();
    translate(rx, ry);
    rotate(radians(frameCount*vel));
    strokeWeight(2);
    fill(150);
    ellipse(0, 0, tam, tam);
    line(-tam/2, 0, tam/2, 0);
    line(0, -tam/2, 0, tam/2);
    fill(180);
    ellipse(0, 0, tam/2, tam/2);
    popMatrix();
  }
}
