int cantAncho, cantAlto;
int ancho, alto;
void setup() {
  size(640, 480);
  cantAncho = 10;
  cantAlto = 12;
  surface.setResizable(true);
}
void draw() {
  background(255);
  ancho = width/cantAncho;
  alto = height/cantAlto;

  for (int i=0; i<cantAncho; i++) {
    for (int j=0; j<cantAlto; j++) {
      boolean sobreCelda = mouseX>i*ancho&&mouseX<i*ancho+ancho && mouseY>j*alto&&mouseY<j*alto+alto;
      if (sobreCelda) {
        fill(0);
      } else {
        fill(200);
      }
      rect(i*ancho, j*alto, ancho, alto);
    }
  }
}
