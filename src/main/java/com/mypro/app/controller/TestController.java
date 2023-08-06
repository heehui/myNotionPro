package com.mypro.app.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.mypro.app.service.TestService;


@Controller
public class TestController {
	
	@Autowired
	private TestService testService;
	
	@RequestMapping(value="/", method= RequestMethod.GET) public String index(HashMap<String, Object> param, Model model) {
		  List<HashMap<String, Object>> list = testService.getBoardList(param);
		  model.addAttribute("list", list);
		  
		  return "index"; 
	}
	
	@RequestMapping(value="list.do", method= RequestMethod.GET) public String list(HashMap<String, Object> param, Model model) {
		  List<HashMap<String, Object>> list = testService.getBoardList(param);
		  model.addAttribute("list", list);
		  
		  return "index"; 
	}
	
	@RequestMapping(value="deleteList.do", method=RequestMethod.GET) public String deleteList(int idx, Model model) {
		testService.deleteListOne(idx);
		
		return "redirect:/list.do";
	}
	 
	@RequestMapping(value="createListOne.do", method=RequestMethod.GET) public String createList(HashMap<String, Object> param, Model model) {
		
		testService.createListOne(param);
		
		return "redirect:/list.do";
	}
	
	@RequestMapping(value = "/test", method= RequestMethod.GET, produces = { "application/json;charset=UTF-8" })
	public ResponseEntity<HashMap<String, Object>> test(HttpServletRequest request, @RequestParam HashMap<String, Object> param) {
		
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		List<HashMap<String, Object>> list = null;
			if (param.isEmpty() || !(param.containsKey("testingParam1"))) {
				resultMap.put("result", "param error!");
			} else {
				list = testService.getBoardList(param);
				resultMap.put("result", "success");				
			}	
	
		return ResponseEntity.status(HttpStatus.OK).body(resultMap);
	}
	
	
	 @RequestMapping(value = "/hellospring", method = RequestMethod.GET)
	    public String helloSpring() {
	        return "Hello Spring";
	 }
	 
	
}