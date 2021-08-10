String [] cuentos = {"La pradera", "el hombre ilustrado", "el asesino", 
  "y la roca gritó", "crónicas marcianas", "Farenhet 451", "El vino de estío", 
  "Otro mas ", "este cuento tiene un título tan, pero tan \nlargo que va en dos lineas" }; 
  // declaro, dimensiono y asigno valor en la misma acción
int [] edad = {22, 45, 68, 19, 32, 74};
int num;
void setup() {
  size(600, 600);
  /* así cargaríamos uno x uno
   cuentos[0] = "La pradera"; 
   cuentos[1] = "el hombre ilustrado";*/
  textSize(25);
}
void draw() {
  background(0);
  for (int i=0; i<cuentos.length; i++) {
    text(cuentos[i], 50, 50+i*50);
  }
  text(cuentos[num], 50, height-50);
}
void mousePressed() {
  if (num<cuentos.length-1) {
    num++;
  }
}
