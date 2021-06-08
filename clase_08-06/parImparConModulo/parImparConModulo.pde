/*usamos el operador %(módulo) para detectar números pares */
int cant = 10 ;
int px, px2;
int tam;
void setup() {
  size(400, 400);
  tam = width/cant;
  background(0);

  frameRate(2);
}
void draw() {

  fill(255);

  rect(px, 0, tam, height/2);
  px += tam;  // incrementamos la posición según el tamaño

  if (px2%2==0) { // se cumple cuando px2 es par
    fill(255, 0, 0);
  } else {
    fill(100);
  }
  rect(px2*tam, height/2, tam, height/2); // el valor de px2 multiplicado el tamaño
  px2++; // incrementa de a uno.
}
