//Agostina Milla
//tp2 Comisión 1
PFont fuente;
PImage intro,familia,morty,rick,outro;
String estado;
String texto1,texto2,texto3,texto4,texto5,texto6,texto7,texto8,texto9;
int segundos;
int py,xd,lol,equis,i,ancho,alto;
color boton;

void setup() {
  background(0);
  size(640, 480);
   estado="pant1";
    py = height;
    xd= height;
    lol=height;
    equis = 236;
  i = 123;
  ancho = 170;
  alto = 50;
  boton = color(135, 206, 235);
  intro=loadImage("intro.jpg");
 familia=loadImage("familia.jpg");
morty=loadImage("morty.jpg");
rick=loadImage("rick.jpg");
outro=loadImage("outro.jpg");
 fuente = loadFont("rymfuente.vlw");
  textFont(fuente, 45);
texto1 =("RICK and MORTY");
texto2= ("JUSTIN ROLLAND as ¨RICK¨");
texto3=("MAURICE LAMARCHE as¨MORTY¨");
texto4= ("SARAH CHALKE as ¨BETH¨");
texto5= ("CHRIS PARNEEL as ¨JERRY¨"); 
texto6= ("SPENCER GRAMMER as ¨SUMMER¨");
texto7= ("VAMOS MORTY VOLTEA EL PEPINILLO, NO TE VAS A ARREPENTIR, LA RECOMPENSA ES GIGANTE");
texto8= ("ME CONVERTÍ EN UN\n PEPINILLO MORTY\n¡BOM! ");
texto9= ("CREATED BY\n JUSTIN ROILAND\n DAN HARMON\n CO-PRODUCER\n AGOSTINA MILLA");
}

void draw() {
  if (estado.equals("pant1")){
 image(intro,0,0,640,480);
 textSize(45);
 textAlign(CENTER);
  fill(135, 206, 235);
 text(texto1, 100, py, 440, 400);
  if (py>80) {
    py --; } }
    else if (estado.equals("pant2")) {
      image(familia,0,0,640,480);
      textSize(20);
      fill(0,mouseY);
      text(texto2,213,420,200,300);
      text(texto3,495,278,200,300);
      text(texto4,396,47,200,300);
      text(texto5,21,36,200,300);
      text(texto6,2,173,200,300);
       }
       else if (estado.equals("pant3")) {
      image(morty,0 ,0,640,480);
      text(texto7,228,82,250,200);
       }
       else if (estado.equals("pant4")) {
      image(rick,0,0,640,480);
      textSize(20);
      fill(0,mouseY);
      text(texto8,155,113,300,200);
       }
      else if (estado.equals("pant5")) {
      image(outro,0,0,640,480);
      textAlign(CENTER,CENTER);
      fill(255);
 text(texto9, 100, lol,440,400);
 if (lol>65) {
    lol--; }
    fill(boton);
  rect(equis, i, ancho, alto);
  fill(255);
    {text("reiniciar",320,152); }
       }
       
      if (frameCount%60 == 0) {
        segundos++;
      }
      if (segundos<8) {
        estado= "pant1";
      } else if (segundos>=8 && segundos<= 13) {
      estado= "pant2"; }
       else if (segundos >=13 && segundos <=16) {
    estado = "pant3";}
     else if (segundos >=16 && segundos <=18) {
    estado = "pant4";
    } else {
    estado = "pant5";
  } }

     void mousePressed() {
  println(mouseX+","+mouseY);
  if (mouseX>= equis && mouseX< equis+ancho && mouseY>i && mouseY< i+alto && segundos>20) {
    estado= "pant1";
  segundos= 0;
  py = height;
    xd= height;
    lol=height;
   equis = 236;
  i = 123;
  ancho = 170;
  alto = 50;
  boton = color(135, 206, 235); }
     }
