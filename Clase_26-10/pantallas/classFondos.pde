class Fondo {
  int numImage;
  PImage [] fondos = new PImage[9];
  Fondo() {
    for (int i=0; i<fondos.length; i++) {
      fondos[i] = loadImage("fondo"+i+".jpg");
    }
  }
  void dibujarFondo(int num ) {
    numImage = num;
    image(fondos[numImage], 0, 0);
  }
}
