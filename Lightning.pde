int startX = mouseX;
int startY = 0; 
int endX = mouseX;
int endY = 0; 

void setup()
{
  size(600,600);
  strokeWeight(3);
  background(0);
}
void draw()
{
	stroke((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
	background(0);	
	while (endY < 600)
	{
		//stroke((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
		endX = startX + (int) (Math.random() * 19) - 9;
		endY = startY + (int) (Math.random() * 10);
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY; // == or =
	}
}
void mousePressed()
{
	startX = mouseX; 
	startY = 0;
	endX = mouseX;
	endY = 0;
}

