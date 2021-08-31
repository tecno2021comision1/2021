int cant = 5;
int tam;
int sep = 3;
int px, py; // posición del personaje
boolean [][] arriba = new boolean[cant][cant];
boolean [][] abajo = new boolean[cant][cant];
boolean [][] derecha = new boolean[cant][cant];
boolean [][] izquierda = new boolean[cant][cant];

boolean [][] cereza = new boolean[cant][cant];
int contador;
void setup() {
  size(500, 500);
  tam = width/cant;
  laberinto(); // llamo a la función
}
void draw() {
  background(0);
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      if (cereza[i][j]) {
        noStroke();
        fill(255, 0, 0);
        ellipse(i*tam+tam/2, j*tam+tam/2, tam/4, tam/4);
      }

      stroke(0, 255, 0); 
      strokeWeight(2);
      if (arriba[i][j]) {
        line(i*tam+sep, j*tam+sep, i*tam+tam-sep, j*tam+sep); // linea arriba
      }
      if (abajo[i][j]) {
        line(i*tam+sep, j*tam+tam-sep, i*tam+tam-sep, j*tam+tam-sep); // linea abajo
      }
      if (izquierda[i][j]) {
        line(i*tam+sep, j*tam+sep, i*tam+sep, j*tam+tam-sep); // linea izquierda
      }
      if (derecha[i][j]) {                  
        line(i*tam+tam-sep, j*tam+sep, i*tam+tam-sep, j*tam+tam-sep); // linea derecho
      }
    }
  }

  if (cereza[px][py]) { // si coincide con una cereza ubicada
    cereza[px][py] = false; // desaparece
    contador--;
  }
  // dibujamos personaje
  noStroke();
  fill(255, 255, 0);
  ellipse(px*tam+tam/2, py*tam+tam/2, tam/2, tam/2); // personaje ubicado
  //println("px " + px + " py : "+py);
  //println(contador);
}
void keyPressed() {
  if (keyCode==UP  && arriba[px][py]==false) { // presiono tecla UP Y además arriba sea false
    py--;
  }
  if (keyCode==DOWN && !abajo[px][py] ) {
    py++;
  }
  if (keyCode==LEFT && izquierda[px][py]== false) {
    px--;
  }
  if (keyCode==RIGHT && !derecha[px][py]) {
    px++;
  }
}
