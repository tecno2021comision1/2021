// clase Pelota
class Pelota {
  float px, py, dx, dy; // propiedades
  float tam;
  color relleno;
  Pelota() {
    tam = random(20, 50);
    px = random(tam/2, width-tam/2);
    py = random(tam/2, height-tam/2);
    dx = random(-3, 3);
    dy = random(-3, 3);
    relleno = color(200);
  }
  Pelota(float tamano, color relleno_) {
    tam = tamano;
    relleno = relleno_;
    px = random(tam/2, width-tam/2);
    py = random(tam/2, height-tam/2);
    dx = random(-3, 3);
    dy = random(-3, 3);
  
    
  }

  void dibujarPelota() { // método dibujar
    fill(relleno);
    ellipse(px, py, tam, tam);
  }
  void moverPelota() { // método mover
    if (px>width-tam/2 || px<tam/2) {
      dx *= -1;
    }
    if (py>height-tam/2 || py<tam/2) {
      dy *= -1;
    }

    px += dx;
    py += dy;
  }
}
