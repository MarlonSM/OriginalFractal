public void setup()
{
	size(600,600);
	rectMode(CENTER);
}

public void draw()
{
	background(0);
	myFractal(height/2,width/2,500);
}


public void myFractal(float x, float y, float siz)
{
	float r, g, b;
	r = 255;
	g = 255;
	b = 255;
	color c = color(r,g,b);
	circle(x,y,siz);
	if (siz > 10)
	{
		fill(r += (x + siz/2), g += (y-siz/2), b += siz/2);
		myFractal(x+siz/2,y-siz/2,siz/2);

		myFractal(x-siz/2,y+siz/2,siz/2);
		myFractal(x+siz/2,y+siz/2,siz/2);
		myFractal(x-siz/2,y-siz/2,siz/2);
	}
}