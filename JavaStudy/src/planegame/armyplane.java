package planegame;

import java.awt.Graphics;
import java.awt.Image;

public class armyplane extends PlaneObject{
	int speed=5;
	boolean live=true;
	
	public armyplane(double x, double y, Image img) {
		this.x = x;
		this.y = y;
		this.img = img;
		width = img.getWidth(null);
		height = img.getHeight(null);
	}

	/* (non-Javadoc)
	 * @see planegame.PlaneObject#DrawMyself(java.awt.Graphics)
	 */
	@Override
	public void DrawMyself(Graphics g) {
		if(live){
			g.drawImage(img, (int) x, (int) y, null);
		}
	}
	
	

}
