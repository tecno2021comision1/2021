void auto(int px, int py, int ancho, int alto, color relleno, float vel) {
  fill(relleno);
  rect(px, py, ancho, alto);
  rueda(px, py+alto, alto, vel); // rueda izquierda
  rueda(px+ancho, py+alto, alto, vel); // rueda derecha
}

void rueda(int px, int py, int tam, float vel) {
  push();
  translate(px, py);
  rotate(radians(frameCount*vel));
  fill(100);
  ellipse(0, 0, tam, tam);
  fill(200);
  ellipse(0, 0, tam/2, tam/2);
  strokeWeight(2);
  line(-tam/4, 0, tam/4, 0);
  line(0, -tam/4, 0, tam/4);
  pop();
}
