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
	@RequestMapping(value = "aiEyeTest")
	public String aiEyeTest() {
		return "aiTest/aiEyeTest";
		
	}
	
	//AI 피부과 진료
	@RequestMapping(value = "aiSkinTest")
	public String aiSkinTest() {
		return "aiTest/aiSkinTest";
		
	}
	
	//의약품 검색
	@RequestMapping(value = "searchMedicine")
	public String searchMedicine() {
		return "patient/searchMedicine";
		
	}

	
	//의약품 검색
	@RequestMapping(value = "testMain")
	public String testMain() {
		return "patient/testMain";
		
	}
	
	//의약품 검색
	@RequestMapping(value = "main2")
	public String main2() {
		return "patient/main2";
		
	}
	
	//의약품 검색
	@RequestMapping(value = "DermatologyAddMain")
	public String DermatologyAddMain() {
		return "aiTest/DermatologyAddMain";
		
	}
	
	//설문 진단
	@RequestMapping(value = "survey_main")
	public String survey_main() {
		return "survey/survey_main";
				
	}
	//우울증 진단
	@RequestMapping(value = "survey_depression")
	public String survey_depression() {
		return "survey/survey_depression";
						
	}
	//조울중 진단
	@RequestMapping(value = "survey_manicDepression")
	public String survey_manicDepression() {
		return "survey/survey_manicDepression";
							
	}
	//진단 결과
	@RequestMapping(value = "survey_result1")
	public String survey_result1() {
		return "survey/survey_result1";
								
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
			SimpleDateFormat ss = new SimpleDateFormat("yyyy-MM-dd");	
			Date today = new Date();
			scheduleVO vo = new scheduleVO();
			vo.setTitle("UI 어서오고");
			vo.setStart("2020-11-23");
			vo.setBackgroundColor("#f56954");
			vo.setBorderColor("#f56954");
			vo.setAllDay(true);
			List<scheduleVO> voList = new ArrayList<scheduleVO>();
			voList.add(vo);
			scheduleVO vo1 = new scheduleVO();
			vo1.setTitle("Test 됐고");
			vo1.setStart("2020-11-23");
			vo1.setBackgroundColor("#00c0ef");
			vo1.setBorderColor("#00c0ef");
			vo1.setAllDay(false);
			voList.add(vo1);
		    mm.addAttribute("vo",voList);
		    
        return step;
    }
	
	


	//의사메인
	@RequestMapping(value = "doctor_main")
	public String doctor_main() {
		return "doctor/doctor_main";
						
	}
	

	//의사메인
	@RequestMapping(value = "DoctorChart")
	public String DoctorChart() {
		return "doctor/DoctorChart";
						
	}
	//의사메인
	@RequestMapping(value = "DoctorDetail")
	public String DoctorDetail() {
		return "doctor/DoctorDetail";
						
	}
	//의사메인
	@RequestMapping(value = "doctorQnA")
	public String doctorQnA() {
		return "doctor/doctorQnA";
						
	}
	//의사메인
	@RequestMapping(value = "DoctorReservation")
	public String DoctorReservation() {
		return "doctor/DoctorReservation";
						
	}
	//의사메인
	@RequestMapping(value = "inout_check")
	public String inout_check() {
		return "doctor/inout_check";
						
	}
	//의사메인
	@RequestMapping(value = "operation_schedule")
	public String operation_schedule() {
		return "doctor/operation_schedule";
						
	}
	//의사메인
	@RequestMapping(value = "popup")
	public String popup() {
		return "doctor/popup";
						
	}
	//의사메인
	@RequestMapping(value = "room_check")
	public String room_check() {
		return "doctor/room_check";
						
	}
	
	
	

}