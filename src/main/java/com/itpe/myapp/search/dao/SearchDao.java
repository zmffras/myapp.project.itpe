package com.itpe.myapp.search.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.itpe.myapp.search.model.ExamData;

@Repository("searchDao")
public class SearchDao {

	@Resource(name = "sqlSessoinTemplate")
	private SqlSessionTemplate session;

	public boolean insertKeyword(String keword, String userInfo, String userIP) {
		HashMap<String, Object> keywordUserInfo = new HashMap<String, Object>();
		keywordUserInfo.put("keyword", keword);
		keywordUserInfo.put("userInfo", userInfo);
		keywordUserInfo.put("userIP", userIP);

		try {
			session.insert("testdb.insertKeyword", keywordUserInfo);
			System.out.println("good");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("bad");
			return false;
		}
		return true;

	}
	
	public List<ExamData> selectExamDataNew(HashMap<String, List<String>> keywordMap){		
		return session.selectList("testdb.getExamData", keywordMap);
	}
	
	public List<ExamData> selectExamDataNew2(HashMap<String, List<String>> keywordMap){		
		return session.selectList("testdb.getExamData2", keywordMap);
	}
	
	public List<ExamData> selectExamDataNew3(HashMap<String, List<String>> keywordMap){		
		return session.selectList("testdb.getExamData3", keywordMap);
	}
	
	public List<ExamData> selectExamDataNew4(HashMap<String, List<String>> keywordMap){		
		return session.selectList("testdb.getExamData4", keywordMap);
	}
	
	public List<ExamData> selectExamDataNew5(HashMap<String, List<String>> keywordMap){		
		return session.selectList("testdb.getExamData5", keywordMap);
	}
	
	public List<ExamData> selectExamDataNew6(HashMap<String, List<String>> keywordMap){		
		return session.selectList("testdb.getExamData6", keywordMap);
	}
	
	public List<ExamData> selectExamDataNew7(HashMap<String, List<String>> keywordMap){		
		return session.selectList("testdb.getExamData7", keywordMap);
	}
	
	//1교시형 문제
	public List<ExamData> selectExamData0(HashMap<String, List<String>> keywordMap){		
		return session.selectList("testdb.getExamData0", keywordMap);
	}
	
	//2교시형 문제
	public List<ExamData> selectExamData00(HashMap<String, List<String>> keywordMap){		
		return session.selectList("testdb.getExamData00", keywordMap);
	}
	
	
	//1교시형 문제
	public List<ExamData> selectExamData0(String[] keywordTitieArray, String[] keywordTurnArray, String[] keywordTitieNotArray) {
		HashMap<String, Object> keywordValueMap = new HashMap<String, Object>();

		keywordValueMap.put("keywordTurnArray", keywordTurnArray);
		keywordValueMap.put("keywordTitieArray", keywordTitieArray);
		keywordValueMap.put("keywordTitieNotArray", keywordTitieNotArray);
		return session.selectList("board.getExamData0", keywordValueMap);		
	}
	
	//2교시형 문제
	public List<ExamData> selectExamData00(String[] keywordTitieArray, String[] keywordTurnArray, String[] keywordTitieNotArray) {
		HashMap<String, Object> keywordValueMap = new HashMap<String, Object>();

		keywordValueMap.put("keywordTurnArray", keywordTurnArray);
		keywordValueMap.put("keywordTitieArray", keywordTitieArray);
		keywordValueMap.put("keywordTitieNotArray", keywordTitieNotArray);
		return session.selectList("board.getExamData00", keywordValueMap);		
	}
	
	public String test(String t) {

		t = "okok";

		return t;
	}

	// 1개만 select

	public ExamData select(String id) {

		ExamData examData = session.selectOne("testdb.selectUser", id);

		System.out.println(examData);
		return examData;
	}

	// 여러 개 select

	public List<ExamData> selectAll() {

		List<ExamData> examDataList = session.selectList("testdb.selectUserAll");

		System.out.println("stest");

		System.out.println(examDataList);

		return examDataList;
	}

}
