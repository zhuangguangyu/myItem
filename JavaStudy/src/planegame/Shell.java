package planegame;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.Rectangle;

public class Shell extends PlaneObject {
	double degree;

	public Shell() {
		degree = Math.random() * Math.PI * 2;
		x = 250;
		y = 250;
		width = 8;
		height = 8;
		speed = 4;
	}

	
	/* (non-Javadoc)
	 * @see planegame.PlaneObject#getRec()
	 */
	@Override
	public Rectangle getRec() {
		// TODO Auto-generated method stub
		return super.getRec();
	}


	public void draw(Graphics g) {
		Color c = g.getColor();
		g.setColor(Color.RED);// 设置炮弹颜色
		g.fillOval((int) x, (int) y, width, height);// 将炮弹填充为实心
		x += speed * Math.cos(degree);
		y += speed * Math.sin(degree);
		

		if (x < 0 || x > Planeframe.PlanFrame_width) {
			degree = Math.PI - degree;
		}
		if (y < 0 || y > Planeframe.PlaneFrame_height) {
			degree = -degree;
		}
		g.setColor(c);

	}
}
