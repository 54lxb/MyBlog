package com.lxb.web;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ValiImg extends HttpServlet {
	/**
	 * 验证码生成
	 */
	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//清除Session中已存储验证码
		request.getSession().setAttribute("valistr", "");
		//---设置请求头，禁止客户端浏览器缓存验证码图片
		response.setIntHeader("Expires", -1);
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");
		//---在内存中构建图片
		BufferedImage bi = new BufferedImage(65, 40, BufferedImage.TYPE_INT_RGB);
		//---获取图像上的画笔
		Graphics g = bi.getGraphics();
		//---设置背景色
		Color c = new Color(200,150,255);
		g.setColor(c);
		//---设置图片大小
		g.fillRect(0, 0, 65, 40);
		//---把显示在图片上的字符转化为数组
		char[] str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz".toCharArray();
		Random r = new Random();
		int length = str.length,index;
		StringBuffer sb = new StringBuffer();
		for (int i=0; i<4; i++) {
			index = r.nextInt(length);
			//---随机生成背景颜色
			g.setColor(new Color(r.nextInt(88),r.nextInt(188),r.nextInt(255)));
			//---将字符串随机取出并画在图片上，间距为18
			g.setFont(new Font("宋体",Font.BOLD,25));
			g.drawString(str[index]+"", (i*15)+3, 30);
			sb.append(str[index]);
		}
		//---将图片输出到浏览器
		ImageIO.write(bi, "jpg", response.getOutputStream());
		//---把验证码存入Session，便于检验验证码
		request.getSession().setAttribute("valistr", sb.toString());
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}
}
