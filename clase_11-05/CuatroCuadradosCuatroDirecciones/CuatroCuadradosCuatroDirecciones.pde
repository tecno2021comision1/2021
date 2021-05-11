int pos; // declaración
int relleno; // variable para el color
float rojo; // tipo de dato flotante (admite decimales)

void setup() {
  size(400, 400);
  pos = 0;
}
void draw() {
  background(0);

  relleno = pos*255/350; /* regla de tres (quedó de muestra, sin uso en el ejemplo */

  /* la función map() se utiliza para relacionar valores y promediar un resultado
   entre diferentes escalas. 
   En este ejemplo la usamos para promediar el valor de pos con un color que queremos conseguir
   La funcion consta de 5 parámetros:
   el 1° es la variable principal
   2° y 3° son los valores extremos que puede adquirir esa variable
   4° y 5° son los valores posibles que queremos obtener
   Aclaro extremos y posibles porque Uds determinar si va de un máximo a mínimo o viceversa*/

  rojo = map(pos, 0, 350, 0, 255);

  /* mientras pos vaya de 0 a 350, rojo va a valer entre 255 y 0*/

  fill(rojo, 0, 0);
  rect(pos, 0, 50, 50); // 1
  rect(350, pos, 50, 50    ); // 2
  rect(350-pos, 350, 50, 50); // 3 
  rect(0, 350-pos, 50, 50); // 4

  pos ++;

  if (pos >= 350) {
    pos = 0;
  }

  println("pos vale :" + pos);
  println("rojo vale :" + rojo);
}

void mousePressed() { // al presionar el mouse sobre la ventana
  pos = 0; // asignamos un nuevo valor a nuestra variable
}
