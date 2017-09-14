//Die one;
//Die two;

void setup()
{
	size(350,350);
	noLoop();
}
void draw()
{
	background(255,255,102);
	for(int x=50; x<300; x+=100)
	{
		Die one = new Die(x,50);
		one.show();
	}
	
	
	/*one = new Die(50,50);
	one.show();

	two = new Die(150,50);
	two.show();*/
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	
	int myX, myY, value;

	Die(int x, int y) //constructor
	{
		myX =x;
		myY =y;
		roll();
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

		//if(Math.random()<1)
			//value=1;

		//System.out.println("value =" + value);

	}
	void show()
	{
		fill(135, 206,250);
		rect(myX,myY,50,50);
		fill(0);
		if(value == 1)
			ellipse(myX+25,myY+25,5,5);
		else if(value == 2)
			{
			ellipse(myX+15,myY+25,5,5);
			ellipse(myX+35,myY+25,5,5);
			}
		else if(value ==3)
		{
			ellipse(myX+25,myY+25,5,5);
			ellipse(myX+40,myY+10,5,5);
			ellipse(myX+10,myY+40,5,5);
		}
		else if(value==4)
		{
			ellipse(myX+10,myY+10,5,5);
			ellipse(myX+40,myY+10,5,5);
			ellipse(myX+10,myY+40,5,5);
			ellipse(myX+40,myY+40,5,5);
		}
		else if(value==5)
		{
			ellipse(myX+10,myY+10,5,5);
			ellipse(myX+40,myY+10,5,5);
			ellipse(myX+10,myY+40,5,5);
			ellipse(myX+40,myY+40,5,5);
			ellipse(myX+25,myY+25,5,5);
		}
		else 
		{
			ellipse(myX+10,myY+10,5,5);
			ellipse(myX+40,myY+10,5,5);
			ellipse(myX+10,myY+25,5,5);
			ellipse(myX+40,myY+25,5,5);
			ellipse(myX+10,myY+40,5,5);
			ellipse(myX+40,myY+40,5,5);	
		}
	}
}
