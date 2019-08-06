package planegame;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;

import javax.swing.JFrame;

@SuppressWarnings("serial")
public class Planeframe extends JFrame {
	
	//设定玩家战机
	Image bgimage = PlaneUtil.getImage("images/bg.jpg");  //获得游戏背景画布
	Image planeimage = PlaneUtil.getImage("images/plane.png"); //获得玩家战机
	int planeX = 140, planeY = 180; //设定玩家战机初始位置
	public static final int PlanFrame_width = 500, PlaneFrame_height = 500;//设置游戏窗口大小
	Plane p = new Plane(planeY, planeX, planeimage);
	
	
	//设定敌方战机
	Image armyplaneimage=PlaneUtil.getImage("images/plane2.jpg");//获得敌方战机
	int armyplaneX=0,armyplaneY=250;
	armyplane ap=new armyplane(armyplaneX, armyplaneY, armyplaneimage);
	
	
	Shell[] shell = new Shell[30];
	
	Explode boom;
	Time_Counter tc=new Time_Counter();
	long startTime=System.currentTimeMillis();
	long endTime;

	public void launchframe() {
		this.setTitle("飞机大战");
		this.setLocation(300, 300);
		this.setSize(PlanFrame_width, PlaneFrame_height);
		this.setVisible(true);
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		new PaintThread().start();
		addKeyListener(new KeyMonitor());

		// 初始化炮弹数组
		for (int i = 0; i < shell.length; i++) {
			shell[i] = new Shell();
		}
	}

	public void paint(Graphics g) {
		g.drawImage(bgimage, 0, 0, null);
		p.DrawMyself(g);
		ap.DrawMyself(g);
		for (int i = 0; i < shell.length; i++) {
			shell[i].draw(g);
			boolean peng = shell[i].getRec().intersects(p.getRec());
			if (peng) {
				p.live = false;  //飞机死掉，飞机画面消失
				if (boom == null) {      //因为子弹和飞机的碰撞是一个持续的过程，若不加上if的判断语句，会不断的new新的Explode对象，造成图片一直显示e1的现象。
					boom = new Explode(p.x, p.y);
					endTime = System.currentTimeMillis();
				}
				boom.draw(g);
			}
		}
		if (!p.live) {
			long time = tc.countTime(startTime, endTime)/1000;
			tc.printInfo(g, "时间：" + time + "秒", 50, 120, 260, Color.white);
		}

	}

	class PaintThread extends Thread {
		@Override
		public void run() {
			while (true) {
				repaint();

				try {
					Thread.sleep(40);
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
	}

	class KeyMonitor extends KeyAdapter {

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.awt.event.KeyAdapter#keyPressed(java.awt.event.KeyEvent)
		 */
		@Override
		public void keyPressed(KeyEvent e) {
			p.addDirection(e);
		}

		@Override
		public void keyReleased(KeyEvent e) {
			p.deDirection(e);
		}

	}

	// 双缓冲
//	private Image offScreenImage = null;
//
//	public void update(Graphics g) {
//		if (offScreenImage == null)
//			offScreenImage = this.createImage(500, 500);// 这是游戏窗口的宽度和高度
//
//		Graphics gOff = offScreenImage.getGraphics();
//		paint(gOff);
//		g.drawImage(offScreenImage, 0, 0, null);
//	}
//
	public static void main(String[] args) {
		Planeframe p = new Planeframe();
		p.launchframe();

	}
}
