/*formas de cambiar relaciones entre variables
Nos permite "activar" un cambio de valor de forma abrupta o progresiva*/
int px, pos, pos2, ubic;
int tam;
void setup() {
  size(400, 400);
  textSize(30);
  pos = 25;
  tam = 50;
}
void draw() {
  background(255);

  fill(0, 0, 255);
  rect(px, 0, tam, tam);
  px++;
  ellipse(pos, 100, 50, 50);
  pos = px/350*350; // cambio de 0 a 350

  pos2 = px/350; // cambio de 0 a 1

  fill(255, 0, 0);
  rect(ubic, 200, 50, 50);
  ubic = pos2 + ubic;
  println(pos);
  textSize(30);
  text(mouseX/255*255, 50, 300);
  text(mouseX, 150, 300);
  text(ubic, 250, 300);
}
