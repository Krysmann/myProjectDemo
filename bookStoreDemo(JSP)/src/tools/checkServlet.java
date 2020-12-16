package tools;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class checkServlet
 */
public class checkServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static int WIDTH=180;//验证图片宽度
	private static int HEIGHT=20;//验证图片高度      
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public checkServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		response.setContentType("image/jpg");
		ServletOutputStream sos=response.getOutputStream();
		//设置浏览器不要缓存此图片
		response.setHeader("Pragma", "NO-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);
		//创建内存图像并获得其图形上下文
		BufferedImage image=new BufferedImage(WIDTH, HEIGHT, BufferedImage.TYPE_INT_RGB);
		Graphics g=image.getGraphics();
		//随机产生验证码
		char [] rands=generateCheckeCode();
		//产生图像
		drawBackground(g);
		drawRands(g,rands);
		//结束图像的绘制过程，完成图像
		g.dispose();
		//将图像输出到客户端
		ByteArrayOutputStream bos=new ByteArrayOutputStream();
		ImageIO.write(image,"JPG", bos);
		byte [] buf=bos.toByteArray();
		response.setContentLength(buf.length);
		//下面的语句也可以写成：bos.writeTo(sos);
		//sos.write(buf);
		bos.writeTo(sos);
		bos.close();
		sos.close();
		//将当前验证码存入到Session中
		session.setAttribute("check_code",new String(rands));
	}

	private void drawRands(Graphics g, char[] rands) {
		g.setColor(Color.BLACK);
		g.setFont(new Font(null,Font.ITALIC|Font.BOLD,18));
		//在不同的高度上输出验证码的每个字符
		g.drawString(""+ rands[0], 1,17);
		g.drawString(""+ rands[1], 16,15);
		g.drawString(""+ rands[2], 31,18);
		g.drawString(""+ rands[3], 46,16);
		System.out.println(rands);	
	}
	
	private void drawBackground(Graphics g) {
		//画背景
		g.setColor(new Color(0xDCDCDC));
		g.fillRect(0, 0, WIDTH, HEIGHT);
		//随机产生120个干扰点
		for (int i = 0; i < 120; i++) {
			int x=(int)(Math.random()*WIDTH);
		    int y=(int)(Math.random()*HEIGHT);
		    int red=(int)(Math.random()*255);
		    int green=(int)(Math.random()*255);
		    int blue=(int)(Math.random()*255);
		    g.setColor(new Color(red,green,blue));
		    g.drawOval(x, y, 1, 0);
		}
	}
		

	//生成一个4字符的验证码
	private char[] generateCheckeCode() {
	  //定义验证码的字符表
		String chars="0123456789abcdefghijklmnopqrstuvwxyz";
		char [] rands=new char[4];
		for(int i=0;i<4;i++) {
			int rand=(int)(Math.random()*36);
			rands[i]=chars.charAt(rand);		
			}
		return rands;
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
