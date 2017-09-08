int startX = 400;
int startY = 70; 
int endX = 400;
int endY = 70; 

void setup()
{
  size(600,600);
  strokeWeight(2);
  background(0);
}
void draw()
{
	stroke((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
	//background(0);
	fill(#858072);
	rect(390, 70, 20, 20);	
	ellipse(400, 0, 150, 150);
	rect(150, -10, 200, 70);

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
	startX = 400; 
	startY = 70;
	endX = 400;
	endY = 70;
}

