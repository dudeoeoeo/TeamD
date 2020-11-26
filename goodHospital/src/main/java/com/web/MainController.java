package main.java.com.web;

import java.text.SimpleDateFormat;
import java.util.*;
import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import main.java.com.web.service.MainService;
import main.java.com.web.vo.scheduleVO;

@Controller
public class MainController {
 
	@Resource(name="mainService")
	private MainService mainService;
	
	@RequestMapping(value="/")
	public String test(Model model) throws Exception {
		System.out.println("controller");
		String test=mainService.selectTest();
		System.out.println(test);
		model.addAttribute("selectTableList", test);
		return "main/Main";
	}
	
	@RequestMapping(value = "ophthalmology")
	public String ophthalmology() {
		return "ophthalmology";
		
	}
	
	@RequestMapping(value = "testCal")
	public String ophthalmology22() {
		
		return "mainPage";
		
	}
 
	@RequestMapping("/{step}")
    public String viewPage(@PathVariable String step, Model mm) {
//	   Model m = new Model(); 
		Date today = new Date();
		String id = "다다다다";
		String dy = "2020-10-23";
		scheduleVO vo = new scheduleVO();
		vo.setTitle("UI 맞추는 날짜");
		vo.setStart("2020-11-23");
		vo.setBackgroundColor("#f56954");
		vo.setBorderColor("#f56954");
		vo.setAllDay(true);
		List<scheduleVO> voList = new ArrayList<scheduleVO>();
		voList.add(vo);
		scheduleVO vo1 = new scheduleVO();
		vo1.setTitle("Test 제발");
		vo1.setStart("2020-11-23");
		vo1.setBackgroundColor("#00c0ef");
		vo1.setBorderColor("#00c0ef");
		vo1.setAllDay(false);
		voList.add(vo1);
	    SimpleDateFormat ss = new SimpleDateFormat("yyyy-MM-dd");
	    System.out.println(ss.format(today));
	    mm.addAttribute("id", id);
	    mm.addAttribute("title", "UI DeadLine");
	    mm.addAttribute("start", ss.format(today));
	    mm.addAttribute("backgroundColor", "#f56954");
	    mm.addAttribute("borderColor", "#f56954");
	    mm.addAttribute("allDay", true);
	    mm.addAttribute("vo",voList);
	    System.out.println(new Date(2020, 10, 22));
        return step;
    }
}