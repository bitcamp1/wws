package contract.model;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

public class Redirector {
	public Redirector() {}
	public Redirector(String url, int idx) {
		BufferedWriter bw = null;
		try{
			bw = new BufferedWriter(new FileWriter("/workspace/wws/"+url));
			
		}catch(IOException e){e.printStackTrace();}
		String str = "";
		try{
			str="<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>";
			bw.write(str);
			bw.write("\r\n");
			str="<script>function redirect(){location.href='/preview/list.do?customer_idx="+ idx + "';}</script>";
			bw.write(str);
			bw.write("\r\n");
			str="<html><body onload='redirect()'></body></html>";
			bw.write(str);
		}catch(IOException e){e.printStackTrace();}
		try {
			bw.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
}
