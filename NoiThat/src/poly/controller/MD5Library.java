package poly.controller;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Library {
	public static String toMD5(String str){
		String md5 = null;
		if(null == str) {
			return null;
		}
		
		try {
			MessageDigest digest = MessageDigest.getInstance("MD5");
			digest.update(str.getBytes(), 0, str.length());
			md5 = new BigInteger(1, digest.digest()).toString(16);
		}catch(NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return md5;
	}
}
