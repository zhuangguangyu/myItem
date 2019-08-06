package planegame;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;

public class Time_Counter {
	public long countTime(long StartTime,long EndTime){
		long time=EndTime-StartTime;
		return time;
		
	}
	
	public void printInfo(Graphics g,String str,int size,int x,int y,Color color){
        Color c = g.getColor();
        g.setColor(color);
        Font f = new Font("宋体",Font.BOLD,size);
        g.setFont(f);
        g.drawString(str,x,y);
        g.setColor(c);
    }  

}
