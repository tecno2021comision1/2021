int cant = 10;
int [] numero = new int[cant];
void setup() {
  size(600, 400);
  for (int i=0; i<cant; i++) {
    numero[i] = 0;
  }
  textSize(30);
}
void draw() {
  background(0);
  for (int i=0; i<cant; i++) {
    text(numero[i], 50+i*50, 100);

    text(i, 50+i*50, 200);
  }
  println(keyCode);
}
void keyPressed() {
  // keyCode 48 = 0
  // keyCode 49 = 1
  
  int tecla = keyCode-48; // asigno un valor a la tecla presionada
  if (keyCode>47 && keyCode<58) { // si coincide ese valor con un número
    numero[tecla]++;
  }


  /*if (keyCode==48) { // esto sería hacerlo número x número
   numero[0] ++;
   }
   if (keyCode==49) {
   numero[1] ++;
   }*/
}
