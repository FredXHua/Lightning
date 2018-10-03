PImage webImg;
int startX = (int)(Math.random()* 424);
int startY = 0;
int endX = 150;
int endY = 0;

void setup()
{
  size(423,416);
  frameRate(10);
  String url = "https://image.ibb.co/jZEsWp/Lightning_Pikachu.png";
  webImg = loadImage(url, "png");
  tint(255,80);
  strokeWeight(3);
  noLoop();
}
void draw()
{

  fill(0,0,0,50);
  rect(0,0,423,416);
  image(webImg, 0, 0);
  while (endY < 416) 
  {
    stroke(255,200,0);
    endY = startY + (int)(Math.random() *10) +1;
    endX = startX + (int)(Math.random() *18) -9;
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
}
void mouseDragged()
{
  redraw();
  startX = (int)(Math.random()* 424);
  startY = 0;
  endX = 150;
  endY = 0;
}
