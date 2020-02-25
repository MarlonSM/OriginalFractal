public void setup()
{
	size(600,600);
	rectMode(CENTER);
}

public void draw()
{
	background(77,39,73);
	stroke(5,85,105);
	fill(0);
	myFractal(height/2,width/2,300);
}


public void myFractal(int x, int y, int siz)
{
	circle(x,y,siz);
	if (siz > 5)
	{

		myFractal(x+siz/2,y-siz/2,siz/2);
		myFractal(x-siz/2,y+siz/2,siz/2);
		myFractal(x+siz/2,y+siz/2,siz/2);
		myFractal(x-siz/2,y-siz/2,siz/2);
	}
}