// en esta clase cargamos todos los fondos del juego
class Fondo {
  int numFondo;
  int py;
  int cant = 6; // cant de fondos
  PImage [] fondos = new PImage[cant];
  Fondo() {
    for (int i=0; i<cant; i++) {
      fondos[i] = loadImage("pantalla"+i+".png");
    }
    py = -600;
  }
  void dibujar(int numFondo_) { // dibuja según el número de imagen que reciba por parámetro
    numFondo = numFondo_;
    image(fondos[numFondo], 0, py);
    if (numFondo>1 && numFondo<4 ) {//&& moverFondo) {
      py += 2;
    } else {
      py = 0;
    }
    if (py>0) {
      py = -600;
    }
  }
}
/*Los fondos 2 y 3 cargan una imagen del doble de altura de la ventana.
Cuando se desplaza hacia abajo, llega hasta la mitad de su alto y vuelve a su punto de inicio,
lo que da una sensación de continuidad*/
