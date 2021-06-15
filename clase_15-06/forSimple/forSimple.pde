int tam;
void setup() {
  size(400, 400);
  tam = width/10;
}
void draw() {
  background(255);
  rect(0, 0, tam, tam);
  rect(40, 0, tam, tam);
  rect(80, 0, tam, tam);
  rect(120, 0, tam, tam);
  rect(160, 0, tam, tam);
  rect(200, 0, tam, tam);
  rect(240, 0, tam, tam);
  rect(280, 0, tam, tam);
  rect(320, 0, tam, tam);
  rect(360, 0, tam, tam);

  for (int px=0; px<10; px++) {
    rect(px*tam, 200, tam, tam);
  }
  /* 0
     1
     2
     ...
     9
  */
}
