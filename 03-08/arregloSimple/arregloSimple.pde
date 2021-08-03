float [] px; // declaro el arreglo
float [] dx;
float [] tam;
color [] relleno;
int cant = 10; 
int sep;
void setup() {
  size(500, 500);
  sep = height/cant;
  px = new float[cant]; // asigno cantidad de memoria
  dx = new float[cant]; // asigno cantidad de memoria
  tam = new float[cant]; // asigno cantidad de memoria
  relleno = new color[cant];

  /*px[0] = width/2;
   px[1] = width/2;
   px[2] = width/2;
   px[3] = width/2;
   px[4] = width/2; // asignar valor uno x uno (nunca usar esto)*/

  for (int i= 0; i<cant; i++) {
    tam[i] = random(sep/2, sep);
    px[i] = width/2;
    dx[i] = random(1, 3); // asigna un valor aleatorio
    relleno[i] = color(0, random(50, 250), 0);
  }
}
void draw() {
  background(0);
  for (int i=0; i<cant; i++) {
    fill(relleno[i]);
    rect(px[i], i*sep, tam[i], tam[i]);
    if (px[i]>width) {
      px[i]= 0;
    }
    px[i] += dx[i];
  }
}
