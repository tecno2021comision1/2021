PrintWriter salida;
int num;
String [] frases = {"Comienza con el título", "sigue con algo introductorio", "luego presenta algún problema", 
  "el problema parece resolverse", "se complica por completo", "hay que seguir intentando", "parece todo perdido", "algo de esperanza", 
  "los tiempos se aceleran", "climax final, se resuelve", "el protagonista vence o muere"};
void setup() {
  size(640, 480);
  salida = createWriter("textos.txt");
  salida.println("void parrafos(){");
  for (int i=0; i<frases.length; i++) {
    salida.println("frases["+i+"] = \""+frases[i]+"\";");
  }
  salida.println("}");
  textSize(22);
}

void draw() {
  background(0);
  text(frases[num], 50, 100);
}
void mousePressed() {
  if (num<frases.length-1) {
    num++;
  }
}
void keyPressed() {
  salida.flush(); // flush escribe la envìa la información al archivo
  salida.close(); // finaliza el archivo
  exit(); // detiene el programa y cierra la ventana
}
