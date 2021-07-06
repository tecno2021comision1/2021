int x;
void setup() {
  size(600, 400);
  strokeWeight(2);
}
void draw() {
  colorMode(HSB, 360, 100, 100);
  // stroke(133, 89, 72);
  stroke(x, 100, 100); // el color "corta" en 360
  line(x, 0, x, height/2);


  colorMode(HSB, width, 100, 100);
  stroke(x, 100, 100); // la variación de color abarca toda la ventana
  line(x, height/2, x, height);

  x++;
}
