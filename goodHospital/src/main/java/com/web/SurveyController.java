package main.java.com.web;

import java.lang.ref.Reference;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import main.java.com.web.vo.DepressionVO;
import main.java.com.web.vo.ManicDepressionVO;

@Controller
public class SurveyController {
	
	@RequestMapping(value="surveyForm1" , method=RequestMethod.POST)
	public String surveyForm(DepressionVO depressionVO ,Model model){
		String problem1 = depressionVO.getProblem1();
		String problem2 = depressionVO.getProblem2();
		String problem3 = depressionVO.getProblem3();
		String problem4 = depressionVO.getProblem4();
		String problem5 = depressionVO.getProblem5();
		String problem6 = depressionVO.getProblem6();
		String problem7 = depressionVO.getProblem7();
		String problem8 = depressionVO.getProblem8();
		String problem9 = depressionVO.getProblem9();
		String problem10 = depressionVO.getProblem10();
		String problem11 = depressionVO.getProblem11();
		String problem12 = depressionVO.getProblem12();
		String problem13 = depressionVO.getProblem13();
		String problem14 = depressionVO.getProblem14();
		String problem15 = depressionVO.getProblem15();
		String problem16 = depressionVO.getProblem16();
		String problem17 = depressionVO.getProblem17();
		String problem18 = depressionVO.getProblem18();
		String problem19 = depressionVO.getProblem19();
		String problem20 = depressionVO.getProblem20();
		model.addAttribute("problem1",problem1);
		model.addAttribute("problem2",problem2);
		model.addAttribute("problem3",problem3);
		model.addAttribute("problem4",problem4);
		model.addAttribute("problem5",problem5);
		model.addAttribute("problem6",problem6);
		model.addAttribute("problem7",problem7);
		model.addAttribute("problem8",problem8);
		model.addAttribute("problem9",problem9);
		model.addAttribute("problem10",problem10);
		model.addAttribute("problem11",problem11);
		model.addAttribute("problem12",problem12);
		model.addAttribute("problem13",problem13);
		model.addAttribute("problem14",problem14);
		model.addAttribute("problem15",problem15);
		model.addAttribute("problem16",problem16);
		model.addAttribute("problem17",problem17);
		model.addAttribute("problem18",problem18);
		model.addAttribute("problem19",problem19);
		model.addAttribute("problem20",problem20);
		
		System.out.println("1. 평소에는 아무렇지도 않던 일들이 괴롭고 귀찮게 느껴졌다. : "+ depressionVO.getProblem1()); 
		System.out.println("2. 먹고 싶지 않고 식욕이 없다. : "+ depressionVO.getProblem2());
		System.out.println("3. 어느 누가 도와준다 하더라도 나의 울적한 기분을 떨쳐 버릴 수 없을 것 같다. : "+ depressionVO.getProblem3()); 
		System.out.println("4. 무슨 일을 하든 정신을 집중하기가 힘들었다. : "+ depressionVO.getProblem4());
		System.out.println("5. 비교적 잘 지냈다. : "+ depressionVO.getProblem5()); 
		System.out.println("6. 상당히 우울했다. : "+ depressionVO.getProblem6());
		System.out.println("7. 모든 일들이 힘들게 느껴졌다. : "+ depressionVO.getProblem7()); 
		System.out.println("8. 앞일이 암담하게 느껴졌다. : "+ depressionVO.getProblem8());
		System.out.println("9. 지금까지의 내 인생은 실패작이라는 생각이 들었다. : "+ depressionVO.getProblem9()); 
		System.out.println("10. 적어도 보통 사람들 만큼의 능력은 있었다고 생각한다. : "+ depressionVO.getProblem10());
		System.out.println("11. 잠을 설쳤다(잠을 잘 이루지 못했다). : "+ depressionVO.getProblem11()); 
		System.out.println("12. 두려움을 느꼈다. : "+ depressionVO.getProblem12());
		System.out.println("13. 평소에 비해 말수가 적었다. : "+depressionVO.getProblem13()); 
		System.out.println("14. 세상에 홀로 있는 듯한 외로움을 느꼈다. : "+ depressionVO.getProblem14());
		System.out.println("15. 큰 불만 없이 생활했다. : "+ depressionVO.getProblem15()); 
		System.out.println("16. 사람들이 나에게 차갑게 대하는 것 같았다. : "+ depressionVO.getProblem16());
		System.out.println("17. 갑자기 울음이 나왔다. : "+ depressionVO.getProblem17()); 
		System.out.println("18. 마음이 슬펐다. : "+ depressionVO.getProblem18());
		System.out.println("19. 사람들이 나를 싫어하는 것 같았다. : "+ depressionVO.getProblem19()); 
		System.out.println("20. 도무지 뭘 해 나갈 엄두가 나지 않았다. : "+ depressionVO.getProblem20());
		
		return "survey/survey_main";
		}

		@RequestMapping(value="surveyForm2" , method=RequestMethod.POST)
		public String surveyForm2(ManicDepressionVO manicDepressionVO ,Model model){
		String m_problem1 = manicDepressionVO.getM_problem1();
		String m_problem2 = manicDepressionVO.getM_problem2();
		String m_problem3 = manicDepressionVO.getM_problem3();
		String m_problem4 = manicDepressionVO.getM_problem4();
		String m_problem5 = manicDepressionVO.getM_problem5();
		String m_problem6 = manicDepressionVO.getM_problem6();
		String m_problem7 = manicDepressionVO.getM_problem7();
		String m_problem8 = manicDepressionVO.getM_problem8();
		String m_problem9 = manicDepressionVO.getM_problem9();
		String m_problem10 = manicDepressionVO.getM_problem10();
		model.addAttribute("m_problem1",m_problem1);
		model.addAttribute("m_problem2",m_problem2);
		model.addAttribute("m_problem3",m_problem3);
		model.addAttribute("m_problem4",m_problem4);
		model.addAttribute("m_problem5",m_problem5);
		model.addAttribute("m_problem6",m_problem6);
		model.addAttribute("m_problem7",m_problem7);
		model.addAttribute("m_problem8",m_problem8);
		model.addAttribute("m_problem9",m_problem9);
		model.addAttribute("m_problem10",m_problem10);		
		System.out.println("1. 잠을 청하지만 자꾸만 뒤척이게 되고 잠이 안 온다. : "+ manicDepressionVO.getM_problem1()); 
		System.out.println("2. 성적 욕구가 심하다는 느낌이 있다. : "+ manicDepressionVO.getM_problem2());
		System.out.println("3. 한 가지 일에 집중하는 것이 어렵고 산만하다. : "+ manicDepressionVO.getM_problem3()); 
		System.out.println("4. 몸이 쳐지고 무기력하며 움직이기가 싫다.  : "+ manicDepressionVO.getM_problem4());
		System.out.println("5. 깊게 무언가를 생각하지 않고 일을 막 벌인다.  : "+ manicDepressionVO.getM_problem5()); 
		System.out.println("6. 식욕이 줄었다.  : "+ manicDepressionVO.getM_problem6());
		System.out.println("7. 생각은 많은데 정리가 안 된다.  : "+ manicDepressionVO.getM_problem7()); 
		System.out.println("8. 갑자기 말이 많아지고 빨라지는 것을 느낀다.  : "+ manicDepressionVO.getM_problem8());
		System.out.println("9. 감정을 주체하기 어려워 소리를 지르거나 그러고 싶다. : "+ manicDepressionVO.getM_problem9()); 
		System.out.println("10. 사소한 일에 감정의 변화가 빠르게 일어난다.  : "+ manicDepressionVO.getM_problem10());
		return "survey/survey_main";
		}
	
}
