package com.itpe.myapp.search.service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.itpe.myapp.common.service.CommonUtil;
import com.itpe.myapp.search.dao.SearchDao;
import com.itpe.myapp.search.model.ExamData;

@Service
public class SearchService {
	
	@Resource(name="searchDao")
	@Autowired
	private SearchDao searchDao;
		
	// 시간 구하기
	DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
	Date date = new Date();
	
	boolean examTest = false;
	boolean examTest2 = false;
	
	// 키워드 포맷 정리
	public String keywordFormat(String rawKeyword) {
		
		String keyword;
				
		// 특수문자 및 연속 스페이스 제거
		keyword = CommonUtil.continueSpaceRemove(CommonUtil.StringReplace(rawKeyword)); 
		
		System.out.println("[" + dateFormat.format(date) + "] keyword : " + keyword);
		
		return keyword;
		
	}
	
	// 문제 검색
	public ModelAndView selectExamDataNew(String rawKeyword, String userInfo, String userIP) {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("search");

		if (rawKeyword.length() > 100) {
			System.out.println("[" + dateFormat.format(date) + "] 키워드 길이 제어");
			return mav;
		}
				
		String keyword = keywordFormat(rawKeyword);	
		
		if ((rawKeyword == null) || (rawKeyword == "")) {
			System.out.println("[" + dateFormat.format(date) + "] 키워드 누락");
			return mav;
		}
				
		// keyword 파라미터 받아와 map 으로 정리
		HashMap<String, List<String>> keywordMap = keywordMapCreate(keyword);
		
		//// 검색 키워드 저장
		searchDao.insertKeyword(keyword, userInfo, userIP );
	
		// @test 로 검색했을 경우
		if( examTest != false ){
			
			List<ExamData> examDataList0 = searchDao.selectExamData0(keywordMap); // 통합 테스트
			List<ExamData> examDataList00 = searchDao.selectExamData00(keywordMap); // 통합 테스트
			
			mav.addObject("examDataList0", examDataList0);
			mav.addObject("examDataList00", examDataList00);
			
			return mav;
		}
		
		if( examTest2 != false ){
			
			List<ExamData> examDataList0 = searchDao.selectExamData0_2(keywordMap); // 통합 테스트
			List<ExamData> examDataList00 = searchDao.selectExamData00_2(keywordMap); // 통합 테스트
			
			mav.addObject("examDataList0", examDataList0);
			mav.addObject("examDataList00", examDataList00);
			
			return mav;
		}
		
		List<ExamData> examDataList = searchDao.selectExamDataNew(keywordMap);		// 기출문제
		List<ExamData> examDataList2 = searchDao.selectExamDataNew2(keywordMap);	// kpc 합숙
		List<ExamData> examDataList3 = searchDao.selectExamDataNew3(keywordMap);	// kpc 모의고사
		List<ExamData> examDataList4 = searchDao.selectExamDataNew4(keywordMap);	// 아이리포 모의고사
		List<ExamData> examDataList5 = searchDao.selectExamDataNew5(keywordMap);	// 플립 모의고사
		List<ExamData> examDataList6 = searchDao.selectExamDataNew6(keywordMap);	// JUD
		List<ExamData> examDataList7 = searchDao.selectExamDataNew7(keywordMap);	// 라이지움 모의고사
		List<ExamData> examDataList8 = searchDao.selectExamDataNew8(keywordMap);	// ITPE 모의고사
				
		mav.addObject("examDataList", examDataList);
		mav.addObject("examDataList2", examDataList2);
		mav.addObject("examDataList3", examDataList3);
		mav.addObject("examDataList4", examDataList4);
		mav.addObject("examDataList5", examDataList5);
		mav.addObject("examDataList6", examDataList6);
		mav.addObject("examDataList7", examDataList7);
		mav.addObject("examDataList8", examDataList8);
		
		return mav;
	}
	
	// 키워드 생성	
	public HashMap<String, List<String>> keywordMapCreate(String keyword){
		String[] keywordList = keyword.split(" ");
		
		HashMap<String, List<String>> keywordMap = new HashMap<String, List<String>>();
		

		List<String> keywordTitieList = new ArrayList<String>();		
		List<String> keywordTurnList = new ArrayList<String>();
		List<String> keywordTitieNotList = new ArrayList<String>();
		List<String> etcList = new ArrayList<String>();
		
		
		examTest = false;
		examTest2 = false;

		for(int i =0; i<keywordList.length; i++) {
			System.out.println("keywordList! : "+keywordList[i]);
			
			if (keywordList[i].contains("@test2") ) {
				examTest2 = true;
			}
			else if (keywordList[i].contains("@test") ) {
				examTest = true;
			}
			else if (keywordList[i].contains("@") ) {
				keywordTurnList.add(keywordList[i].replaceAll("@", "") );
			}
			else if (keywordList[i].contains("-") ) {
				keywordTitieNotList.add(keywordList[i].replaceAll("-", "") );
			}
			else {
				keywordTitieList.add(keywordList[i]);				
			}
		}
		
		keywordMap.put("keywordTitieList", keywordTitieList);
		keywordMap.put("keywordTurnList", keywordTurnList);
		keywordMap.put("keywordTitieNotList", keywordTitieNotList);
		keywordMap.put("etcList", etcList);
		
		return keywordMap;
		
	}
	
	
}
