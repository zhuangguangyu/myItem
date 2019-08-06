package planegame;

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.net.URL;

import javax.imageio.ImageIO;

public class PlaneUtil {
	private PlaneUtil() {

	}

	public static Image getImage(String path) {
		BufferedImage bi=null;
		URL u=PlaneUtil.class.getClassLoader().getResource(path);
		try {
			bi=ImageIO.read(u);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return bi;
	}
}
