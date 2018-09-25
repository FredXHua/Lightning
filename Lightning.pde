PImage webImg;
int startX = (int)(Math.random()* 201) + 50;
int startY = 0;
int endX = 150;
int endY = 0;

void setup()
{
  frameRate(1000);
  background(198);
  size(300,300);
  String url = "http://www.aumentaty.com/community/wp-content/uploads/2018/05/Picture_20180523075422.png";
  webImg = loadImage(url, "png");
  strokeWeight(3);
  noLoop();
}
void draw()
{

  fill(0,0,0,50);
  rect(0,0,300,300);
  image(webImg, 0, 0);
  while (endY < 300) 
  {
    stroke(255,255,0);
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
  startX = (int)(Math.random()* 201) + 50;
  startY = 0;
  endX = 150;
  endY = 0;
}
