package main.java.com.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HealthController {

	@RequestMapping(value="health_info")
	public String health() {
		return "health/health_info";
	}
}
