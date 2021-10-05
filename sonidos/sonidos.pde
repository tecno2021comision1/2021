

// https://processing.org/reference/libraries/  <<-- link a las librerías
// https://processing.org/reference/libraries/sound/index.html  <<-- la librería Sound
// https://processing.org/reference/libraries/sound/AudioSample.html <<--- listado de los métodos de la clase AudiSample

/*Instalar la librería Sound 
 Sketch -->> Import Library... ---> Add Library... 
 Les abre una nueva ventana con un cuadro de búsqueda. Pongan Sound y les va a aparecer todas las librerías de sonido
 Seleccionen Sound y luego presionen "Install"
 */


import processing.sound.*; 
/* este código aparece automáticamente yendo a: Sketch -->>Import Library... y seleccionar Sound */

SoundFile base, ruido, click; // declaro tres instancias de la clase SoundFile

int px, dx; //esto es para mover la ellipse

void setup() {
  size(400, 400);
  background(255);
  dx = 1;
  px = 25;
  // Los archivos deben guardarse en la carpeta data del sketch
  base = new SoundFile(this, "bata.mp3"); // pongo tres sonidos
  ruido = new SoundFile(this, "noise.aiff");
  click = new SoundFile(this, "Point.mp3");

  //base.play(); // el método play reproduce UNA sola vez hasta que termina el sonido
  base.loop(); // loop reproduce indefinidamente el sonido
}      

void draw() {
  background(0);
  float vol = map(mouseX, 0, width, 0, 1); // con el mouseX controlo la variable vol
  // y la uso para el parámetro de volúmen (podría ser un valor fijo)
  base.amp(vol); // el método amp() permite controlar el volúmen entre 0.0 y 1.0

  ellipse(px, 200, 50, 50);
  if (px<25 || px+25>width) {
    dx *= -1;
    ruido.play(); // cuando toca un borde, suena ruido
  }
  px += dx;
}
void mousePressed() {
  if (dist(mouseX, mouseY, px, height/2)<25) {
    click.play(); // suena click al presionar el mouse sobre la figura
  }
}
