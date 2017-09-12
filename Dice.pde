void setup()
{
	size(350,350);
	noLoop();
}
void draw()
{
	background(255,255,102);
	Die one = new Die(150,150);
	one.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY, value;

	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX =x;
		myY =y;
	}
	void roll()
	{
		if(Math.random() < .167)
			value = 1;
		else if(Math.random() < .333)
			value = 2;
		else if(Math.random() < .5)
			value = 3;
		else if(Math.random() < .667)
			value = 4;
		else if(Math.random() < .833)
			value = 5;
		else 
			value = 6;

	}
	void show()
	{
		fill(135, 206,250);
		rect(50,50,50,50);
		fill(0);
		//if(value == 1)
			ellipse(75,75, 5,5);
	}
}
