/*Según la zona de la pantalla donde se mueva el mouse dibujará una figura distinta*/
void setup() {
  size(600, 400);
  background(255);
  line(200, 0, 200, height);
  line(400, 0, 400, height);
}
void draw() {
  if (mouseX <= 200  ) { // si el mouseX es menor a 200
    fill(255, 0, 0);
    ellipse(mouseX, mouseY, 30, 30);
  } else if (mouseX >= 200 && mouseX <= 400 ) { // si es mayor que 200 Y menor que 400
    fill(0, 0, 255);
    rect(mouseX, mouseY, 30, 30);
  } else { // si no cumple ninguna de las anteriores
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}
