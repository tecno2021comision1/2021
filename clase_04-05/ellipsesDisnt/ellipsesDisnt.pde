int px1, py1, px2, py2;
float tam;
float distancia;
void setup() {
  size(400, 400);
  px1 = 0;
  py1 = 0;
  px2 = 400;
  py2 = 0;
}
void draw() {
  background(0);
  fill(0, 255, 0);
  distancia = dist(px1, py1, px2, py2);
  tam = map(distancia, 400, 0, 0, 400 );
  ellipse(px1, py1, tam, tam);
  ellipse(px2, py2, tam, tam);
  // px1 = px1+1;
  //py1 = py1+1;
  px1 ++;
  py1 ++;
  px2 --;
  py2 ++;
  println(distancia);
}
void mousePressed() {
  px1 = 0;
  py1 = 0;
  px2 = 400;
  py2 = 0;
}
