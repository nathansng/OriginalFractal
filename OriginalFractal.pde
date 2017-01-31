int len = 500;
boolean makeSmall = true;

public void setup () {
	size(500, 500);
	background(0);
}

public void draw () {
	if (makeSmall == true) {
		len -= 10;
	} else if (makeSmall == false) {
		len += 10;
	}

	if (len >= 500) {
		makeSmall = true;
	} else if (len <= 20) {
		makeSmall = false;
	}

	fractal(250, 250, len);
}

public void fractal (int x, int y, int siz) {
	int times = siz;

	if (times <= 5) {
		//fill(0);
	} else {
		ellipse(x, y, times, times);
		fractal(x + times / 4, y, times / 2);
		fractal(x - times / 4, y, times / 2);
		fractal(x, y + times / 4, times / 2);
		fractal(x, y - times / 4, times / 2);
	}
}