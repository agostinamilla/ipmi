//Agostina Milla 
//tp1 Comisión 1
PImage vaca;

void setup() {
  //tamaño de la ventana 
  size(800,400);
background(140,173,239);
//imagen
  vaca = loadImage("vaca.jpg");
}
void draw() {
  image(vaca,0,0,400,400);
 
 //piso
 noStroke();
  fill(208,195,146);
 rect(398,200,800,232);
 fill(191,242,65);
 rect(399,223,800,232);

//nubes
fill(255);
ellipse(701,37,80,40);
 
 //cuerpo vaca
 fill(255);
rect(551,118,200,157);

//patas vaca
fill(255);
 rect(551,273,70,55);
 rect(685,273,66,55);
 
  //cara vaca 
  fill(255);
 rect(479,104,115,140);

//cuernos vaca
fill(247,242,222);
ellipse(569,104,20,30);
ellipse(507,103,20,30);

//orejas vaca
fill(0);
ellipse(464,143,28,14);
ellipse(614,143,28,14);

//manchas vaca
ellipse(722,246,20,23);
ellipse(699,132,30,23);
ellipse(627,212,30,23);
ellipse(732,159,18,15);
ellipse(575,275,28,14);
ellipse(680,194,29,30);
ellipse(656,254,25,17);
ellipse(728,307,26,18);
ellipse(610,297,18,30);

//frangas de la cara vaca
fill(0);
rect(479,104,50,140);
rect(546,104,50,140);

 //ojos vaca
fill(255);
ellipse(507,151,12,12);
ellipse(570,151,12,12);

//boca vaca
ellipse(536,209,39,34);
fill(0);
ellipse(536,213,29,15);
fill(243,217,221);
ellipse(535,204,16,7);

}

void mousePressed() {
  println(mouseX+","+mouseY);
}
