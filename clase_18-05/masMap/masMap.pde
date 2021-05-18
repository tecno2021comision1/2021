/*Utilizamos map() para relacionar (y promediar) dos escalas diferentes*/
void setup() {
  size(400, 400);
  textSize(30);
}
void draw() {
  background(255);
  float alto = map(mouseX, 0, 280, 50, height );
  
  float tono = map(mouseX, 0, width, 255, 0); 
  fill(255, 0, 0, tono);
  rect(mouseX, 0, 50, alto);
  fill(100);
  text(mouseX, 50, 300);
  text(int(alto), 150, 300);
}
