package egovframework.example.widget.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WidgetController {
	
	@RequestMapping(value = "widget1.do")
	public String initWidget() throws Exception {

		return "widget/widget1.tiles";
	}
	
	@RequestMapping(value = "widget2.do")
	public String initWidget2() throws Exception {

		return "widget/widget2.tiles";
	}
}
