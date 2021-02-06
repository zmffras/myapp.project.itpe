package com.itpe.myapp.common.service;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class CommonUtil {
	
	// 특수문자 제거 하기
	public static String StringReplace(String str) {
		String match = "[^\uAC00-\uD7A3xfe0-9a-zA-Z\\s\\.\\@\\-\\_]";
		str = str.replaceAll(match, " ");
		return str;
	}

	// 이메일 유효성
	public static boolean isEmailPattern(String email) {
		Pattern pattern = Pattern.compile("\\w+[@]\\w+\\.\\w+");
		Matcher match = pattern.matcher(email);
		return match.find();
	}

	// 연속 스페이스 제거
	public static String continueSpaceRemove(String str) {
		String match2 = "\\s{2,}";
		str = str.replaceAll(match2, " ");
		return str;
	}

}
