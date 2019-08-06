package planegame;

import java.awt.Graphics;
import java.awt.Image;
import java.awt.Rectangle;

public class PlaneObject {
	double x, y;
	Image img;
	int width, height;
	int speed;

	/**
	 * @return the x
	 */
	public double getX() {
		return x;
	}

	/**
	 * @param x
	 *            the x to set
	 */
	public void setX(double x) {
		this.x = x;
	}

	/**
	 * @return the y
	 */
	public double getY() {
		return y;
	}

	/**
	 * @param y
	 *            the y to set
	 */
	public void setY(double y) {
		this.y = y;
	}

	/**
	 * @return the img
	 */
	public Image getImg() {
		return img;
	}

	/**
	 * @param img
	 *            the img to set
	 */
	public void setImg(Image img) {
		this.img = img;
	}

	/**
	 * @return the width
	 */
	public int getWidth() {
		return width;
	}

	/**
	 * @param width
	 *            the width to set
	 */
	public void setWidth(int width) {
		this.width = width;
	}

	/**
	 * @return the height
	 */
	public int getHeight() {
		return height;
	}

	/**
	 * @param height
	 *            the height to set
	 */
	public void setHeight(int height) {
		this.height = height;
	}

	/**
	 * @return the speed
	 */
	public int getSpeed() {
		return speed;
	}

	/**
	 * @param speed
	 *            the speed to set
	 */
	public void setSpeed(int speed) {
		this.speed = speed;
	}

	public PlaneObject(double x, double y, Image img, int width, int height,
			int speed) {
		super();
		this.x = x;
		this.y = y;
		this.img = img;
		this.width = width;
		this.height = height;
		this.speed = speed;
	}

	public PlaneObject(double x, double y, Image img) {
		super();
		this.x = x;
		this.y = y;
		this.img = img;
	}

	public PlaneObject() {
	}

	public void DrawMyself(Graphics g) {
		g.drawImage(img, (int) x, (int) y, null);
	}

	/* 用于碰撞检测 */
	public Rectangle getRec() {
		return new Rectangle((int) x, (int) y, width, height);
	}

}
