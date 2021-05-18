float py, py2;
void setup() {
  size(400, 400);
  textSize(30);
  py = 400;
  py2 = 400;
}
void draw() {
  background(255);
  float alpha = map(py, 400, 0, 255, 0  );
  fill(0, 0, 255);
  rect(0, py, width, 100);
  textSize(50);
  fill(255, alpha);
  //tint();
  text("TITULO", 50, py+50);
  // py = py-1;
  py -= 0.5; // la mitad de velocidad que py2
  py2--;
  // py --;
  println(py);
  println(frameCount);
  rect(0, py2, 200, 100);
}
void mousePressed() {
  py = 400;
  py2 = 400;
}
