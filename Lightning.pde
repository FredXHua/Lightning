int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void setup()
{
  background(0);
  size(300,300);
  strokeWeight(1);
  noLoop();
}
void draw()
{
	while (endX < 300) 
	{
		stroke((int)(Math.random()*131)+80,(int)(Math.random()*131)+80,(int)(Math.random()*131)+80);
		endX = startX + (int)(Math.random()*10)+1;
		endY = startY + (int)(Math.random()*18)-9;
		line(startX,startY,endX,endY);
		startX = endX;
		startY = endY;
	}
}
void mousePressed()
{
	redraw();
	startX = 0;
	startY = 150;
 	endX = 0;
	endY = 150;
}

