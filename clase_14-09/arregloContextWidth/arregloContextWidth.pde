String [] album = {"Invisible", "Los niños que escriben en el cielo", "Bajo Belgrano", 
  "Mondo di cromo", "Kamikaze", "Tester de violencia"};
float []anchoTexto = new float[album.length];
int sep = 40;
void setup() {
  size(800, 600);
  textSize(30);
  textAlign(LEFT, TOP);
}
void draw() {
  background(0);
  // textos();

  /* fill(100);
   rect(100, 400, anchoTexto[2], 40);
   fill(255);
   text(album[2], 100, 400);*/
  lista(200, 30, 25, album, anchoTexto);
  lista(300, 25, 30, album, anchoTexto);
}
void lista(int ubic, int alto, int tamTexto, String[] datos, float [] anchoMarco   ) {
  for (int i=0; i<datos.length; i++) {
    anchoMarco[i] = textWidth(datos[i]);
    fill(100);
    rect(ubic, i*alto, anchoMarco[i], alto, 0, ubic/2, 0, ubic/4);
    fill(255);
    textSize(tamTexto);
    text(datos[i], ubic, i*alto);
  }
}
void textos() {
  for (int i=0; i<album.length; i++) {
    anchoTexto[i] = textWidth(album[i]);
    fill(100);
    rect(sep, i*sep, anchoTexto[i], sep, 0, sep/2, 0, sep/4);
    fill(255);
    text(album[i], sep, i*sep);
  }
}
