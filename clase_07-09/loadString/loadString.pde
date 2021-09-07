String[] lineas; 
int num;
void setup() {
  size(800, 600);
  lineas = loadStrings("cuento.txt");
  textSize(20);
  for (int i = 0; i < lineas.length; i++) {
    println(lineas[i]);
  }
}
void draw() {
  background(0);
  text(lineas[num], 30, 100);
  text(lineas[num+1], 30, 130);
}
void mousePressed() {
  if (num<lineas.length-2) {
    num++;
  }
}
