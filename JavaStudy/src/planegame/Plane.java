package planegame;

import java.awt.Graphics;
import java.awt.Image;
import java.awt.event.KeyEvent;

public class Plane extends PlaneObject {
	boolean left, right, up, down;
	int speed = 7;
	boolean live=true;

	public Plane(double x, double y, Image img) {
		this.x = x;
		this.y = y;
		this.img = img;
		width = img.getWidth(null);
		height = img.getHeight(null);
	}

	public void addDirection(KeyEvent e) {
		switch (e.getKeyCode()) {
		case KeyEvent.VK_LEFT:
			left = true;
			break;
		case KeyEvent.VK_RIGHT:
			right = true;
			break;
		case KeyEvent.VK_UP:
			up = true;
			break;
		case KeyEvent.VK_DOWN:
			down = true;
			break;
		}
	}

	public void deDirection(KeyEvent e) {
		switch (e.getKeyCode()) {
		case KeyEvent.VK_LEFT:
			left = false;
			break;
		case KeyEvent.VK_RIGHT:
			right = false;
			break;
		case KeyEvent.VK_UP:
			up = false;
			break;
		case KeyEvent.VK_DOWN:
			down = false;
			break;
		}
	}

	@Override
	public void DrawMyself(Graphics g) {
		if(live){
		g.drawImage(img, (int) x, (int) y, null);
		if (left) {
			x -= speed;
		}
		if (right) {
			x += speed;
		}
		if (up) {
			y -= speed;
		}
		if (down) {
			y += speed;
			//System.out.println("("+x+","+y+")");
		}
	}else{
		
	}
	}
}
