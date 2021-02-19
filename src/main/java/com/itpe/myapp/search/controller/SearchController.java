package com.itpe.myapp.search.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.itpe.myapp.HomeController;
import com.itpe.myapp.search.model.LoginSessionModel;
import com.itpe.myapp.search.service.SearchService;

@Controller
@RequestMapping("/")
public class SearchController {
		
	@Autowired
	private SearchService searchService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);
		
		System.out.println("search");
		
		return "search";
	}
	
	
	
	@RequestMapping(value = "/search.do", method = RequestMethod.POST)
	public ModelAndView searchProc(@ModelAttribute("LoginModel") LoginSessionModel loginModel, BindingResult result, HttpServletRequest request, HttpSession session, String rawKeyword, Model model) throws IOException {		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("search");

		//System.out.println("request : " +  request.toString()  );

		// 시간 구하기
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date();

		String userIP = request.getRemoteAddr();
		
		System.out.println("[" + dateFormat.format(date) + "] Search Guest Info: " + request.getHeader("user-agent"));
		//System.out.println("[" + dateFormat.format(date) + "] Search Guest Info2: "+ userAgentStringParser.parse(request.getHeader("User-Agent")));
		System.out.println("[" + dateFormat.format(date) + "] Search Guest userIP: "+ userIP );		
		System.out.println("[" + dateFormat.format(date) + "] rawKeyword : " + rawKeyword);
			
		mav = searchService.selectExamDataNew(rawKeyword, request.getHeader("user-agent"), userIP);

		mav.addObject("rawKeyword", rawKeyword);
		
		return mav;							
	}

}
