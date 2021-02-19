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
			session.insert("SearchExam.insertKeyword", keywordUserInfo);
			//System.out.println("good");
		} catch (Exception e) {
			e.printStackTrace();
			//System.out.println("bad");
			return false;
		}
		return true;

	}

	public List<ExamData> selectExamDataNew(HashMap<String, List<String>> keywordMap) {
		return session.selectList("SearchExam.getExamData", keywordMap);
	}

	public List<ExamData> selectExamDataNew2(HashMap<String, List<String>> keywordMap) {
		return session.selectList("SearchExam.getExamData2", keywordMap);
	}

	public List<ExamData> selectExamDataNew3(HashMap<String, List<String>> keywordMap) {
		return session.selectList("SearchExam.getExamData3", keywordMap);
	}

	public List<ExamData> selectExamDataNew4(HashMap<String, List<String>> keywordMap) {
		return session.selectList("SearchExam.getExamData4", keywordMap);
	}

	public List<ExamData> selectExamDataNew5(HashMap<String, List<String>> keywordMap) {
		return session.selectList("SearchExam.getExamData5", keywordMap);
	}

	public List<ExamData> selectExamDataNew6(HashMap<String, List<String>> keywordMap) {
		return session.selectList("SearchExam.getExamData6", keywordMap);
	}

	public List<ExamData> selectExamDataNew7(HashMap<String, List<String>> keywordMap) {
		return session.selectList("SearchExam.getExamData7", keywordMap);
	}

	// 1교시형 문제
	public List<ExamData> selectExamData0(HashMap<String, List<String>> keywordMap) {
		return session.selectList("SearchExam.getExamData0", keywordMap);
	}

	// 2교시형 문제
	public List<ExamData> selectExamData00(HashMap<String, List<String>> keywordMap) {
		return session.selectList("SearchExam.getExamData00", keywordMap);
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
