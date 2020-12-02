package main.java.com.web;

import java.text.SimpleDateFormat; 
import java.util.*;
import javax.annotation.Resource;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.*;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	//AI 안과 진료
	@RequestMapping(value = "ophthalmology")
	public String ophthalmology() {
		return "aiTest/ophthalmology";
		
	}
	
	//AI 피부과 진료
	@RequestMapping(value = "Dermatology")
	public String Dermatology() {
		return "aiTest/Dermatology";
		
	}
	
	//AI 피부과 진료
	@RequestMapping(value = "medicineSearch")
	public String medicineSearch() {
		return "patient/medicineSearch";
		
	}
	
	@RequestMapping(value = "testCal")
	public String ophthalmology22() {
		
		return "mainPage";
		
	}
	
	@RequestMapping(value = "edit_appointment_2")
	public String edit_appoint() {
		
		return "edit_appointment_2";
		
	}
	@RequestMapping(value = "edit_po")
	public String edit_go(HttpServletRequest httpServletRequest) {
		try {
			System.out.println("들어옴");
			String id = httpServletRequest.getParameter("gender");
			String name = httpServletRequest.getParameter("user_name");
			String doctor = httpServletRequest.getParameter("doctor_select");
			System.out.println(id);
			System.out.println(name);
			System.out.println(doctor);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:appointment";		
	}
	@RequestMapping(value = "/{step}")
    public String viewPage(@PathVariable String step, Model mm, HttpServletRequest httpServletRequest) {
			System.out.println("마사카..?;");
			Date today = new Date();
			String id = "�떎�떎�떎�떎";
			String dy = "2020-10-23";
			scheduleVO vo = new scheduleVO();
			vo.setTitle("UI 留욎텛�뒗 �궇吏�");
			vo.setStart("2020-11-23");
			vo.setBackgroundColor("#f56954");
			vo.setBorderColor("#f56954");
			vo.setAllDay(true);
			List<scheduleVO> voList = new ArrayList<scheduleVO>();
			voList.add(vo);
			scheduleVO vo1 = new scheduleVO();
			vo1.setTitle("Test �젣諛�");
			vo1.setStart("2020-11-23");
			vo1.setBackgroundColor("#00c0ef");
			vo1.setBorderColor("#00c0ef");
			vo1.setAllDay(false);
			voList.add(vo1);
		    SimpleDateFormat ss = new SimpleDateFormat("yyyy-MM-dd");
		    mm.addAttribute("id", id);
		    mm.addAttribute("title", "UI DeadLine");
		    mm.addAttribute("start", ss.format(today));
		    mm.addAttribute("backgroundColor", "#f56954");
		    mm.addAttribute("borderColor", "#f56954");
		    mm.addAttribute("allDay", true);
		    mm.addAttribute("vo",voList);
		
        return step;
    }
}