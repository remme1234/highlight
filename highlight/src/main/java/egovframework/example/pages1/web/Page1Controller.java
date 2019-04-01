package egovframework.example.pages1.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Page1Controller {
	
	@RequestMapping(value = "calendars.do")
	public String initclaendar() throws Exception {

		return "page_1/calendars.tiles";
	}
	
	@RequestMapping(value = "post.do")
	public String initpost() throws Exception {

		return "page_1/post.tiles";
	}
	
	@RequestMapping(value = "login.do")
	public String initlogin() throws Exception {

		return "page_1/login.tiles";
	}
	
	@RequestMapping(value = "register.do")
	public String initregister() throws Exception {

		return "page_1/register.tiles";
	}
	@RequestMapping(value = "statement.do")
	public String initstatement() throws Exception {

		return "page_1/statement.tiles";
	}
	
	@RequestMapping(value = "errorLog.do")
	public String initerrorLog() throws Exception {

		return "page_1/errorLog.tiles";
	}
	
	@RequestMapping(value = "support.do")
	public String initrsupport() throws Exception {

		return "page_1/support.tiles";
	}
}

