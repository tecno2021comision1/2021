// intro a Programación Orientada a Objetos (OOP siglas en inglés)
// campos o PROPIEDADES (son las variables)
// las acciones son los METODOS


Pelota ball1, ball2, ball3; // declaro instancias de la clase (objetos)
Pelota pelota;
void setup() {
  size(500, 500);
  ball1 = new Pelota(); // construyo cada una de esas instancias con new
  ball2 = new Pelota();
  ball3 = new Pelota();
  pelota = new Pelota(100, color(255, 0, 0));
}
void draw() {
  background(0);

  ball1.dibujarPelota(); // llamo a los métodos de la clase
  ball2.dibujarPelota();
  ball3.dibujarPelota();

  ball1.moverPelota();
  ball2.moverPelota();
  ball3.moverPelota();

  pelota.dibujarPelota();
  pelota.moverPelota();
}
