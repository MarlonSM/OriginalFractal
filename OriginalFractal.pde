public void setup()
{
	size(600,600);
	rectMode(CENTER);
}

public void draw()
{
	background(77,39,73);
	myFractal(height/2,width/2,500);
}


public void myFractal(float x, float y, float siz)
{
	stroke(5,85,105);
	fill(0);
	circle(x,y,siz);
	if (siz > 10)
	{

		myFractal(x+siz/2,y-siz/2,siz/2);
		myFractal(x-siz/2,y+siz/2,siz/2);
		myFractal(x+siz/2,y+siz/2,siz/2);
		myFractal(x-siz/2,y-siz/2,siz/2);
	}
}