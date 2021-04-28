//Unidad 18
//Estructuras: Continuidad

int pos; // declaro una variable entera (integer)
int ancho;
// operaciones de suma y resta -->> + -
// operaciones de multiplicaciòn y división  -->>>   * /

void setup() { // se ejecuta 1 sola vez
  size(400, 400);

  pos = 100; // asigno valores iniciales
  ancho = 200;

  // frameRate(1); // 1 fotograma por segundo
}

void draw() { // se ejecuta 60 veces por segundo

  background(255);

  fill(0, 0, 255);
  ellipse(pos, 200, 100, 100); // la figura se ubica según el valor de pos
  pos = pos+1;

// mouseX registra dónde está el mouse en el eje X
// mouseY registra dónde está el mouse en el eje Y
// esos datos se pueden usar para otra cosa

  fill(0, mouseX, 0); // esto funciona pero no es lo correcto. 
  rect(0, 0, ancho, 100);
  noFill();
  ellipse(mouseX, mouseY, mouseX, mouseY); // mouseX lee la posición del mouse en X

  println(pos); // imprimo en consola el valor de pos
  println("hoy cambia todo"); // imprimo un mensaje
  println(frameCount); // imprimo el número de frames desde que inicia el programa
}
