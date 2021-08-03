// Horacio Quiroga
// Edgar Alan Poe
// Ray Bradbury
// J L Borges  

int cant = 20;
int tam;
boolean [][] casilla; // declaro arreglo de dos dimensiones
void setup() {
  size(500, 500);
  tam = width/cant;
  casilla = new boolean[cant][cant]; // le damos tamaño
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      casilla [i][j] = false; // asignamos valores iniciales
    }
  }
}
void draw() {
  background(255);
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      boolean sobreCelda = mouseX>i*tam&&mouseX<i*tam+tam && mouseY>j*tam&&mouseY<j*tam+tam;
      if (sobreCelda) {
        casilla [i][j] = true;
      }

      if (casilla [i][j]) {
        fill(0);
      } else {
        fill(250);
      }
      stroke(255, 255, 0);
      rect(i*tam, j*tam, tam, tam);
    }
  }
}
