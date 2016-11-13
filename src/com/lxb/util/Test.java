package com.lxb.util;

import java.io.IOException;

public class Test {
	public static void main(String[] args) {
		try {
			PicUtils pic = new PicUtils("E:\\Study\\Environment\\MyEclipse\\MyBlog\\WebRoot\\static\\img\\headers\\09.jpg");
			pic.resize(100, 100);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
