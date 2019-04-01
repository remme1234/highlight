package egovframework.example.main.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	/*
	 * 7. 컨트롤러를 main, widget, page1, page2 로 나누어 정리하였습니다.
	 * 8. default-left에서 보내진 각각의 논리적주소'label.do'가 @RequestMapping의 value값과 일치하하는 메서드안으로 들어갑니다. 
	 * 9. 해당 논리적 주소에 따라 jsp폴더이름/jsp파일이름의 타일즈를 불러옵니다.
	 */
	@RequestMapping(value = "main.do")
	public String initMain() throws Exception {
		
		return "main/main.tiles";
	}
	
	@RequestMapping(value = "chart.do")
	public String initChart() throws Exception {
		
		return "main/chart.tiles";
	}
	
	@RequestMapping(value = "uiElement.do")
	public String initUiElement() throws Exception {

		return "main/uiElement.tiles";
	}

	@RequestMapping(value = "forms.do")
	public String initforms() throws Exception {

		return "main/forms.tiles";
	}

	@RequestMapping(value = "tables.do")
	public String inittables() throws Exception {

		return "main/tables.tiles";
	}

}
