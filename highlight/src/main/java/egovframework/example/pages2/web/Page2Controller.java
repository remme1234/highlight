package egovframework.example.pages2.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Page2Controller {
	
	@RequestMapping(value = "error.do")
	public String initerror() throws Exception {

		return "page_2/error.tiles";
	}
	
	@RequestMapping(value = "gallery.do")
	public String initgallery() throws Exception {

		return "page_2/gallery.tiles";
	}
	
	@RequestMapping(value = "grid.do")
	public String initgrid() throws Exception {

		return "page_2/grid.tiles";
	}
	
	@RequestMapping(value = "invoice.do")
	public String initinvoice() throws Exception {

		return "page_2/invoice.tiles";
	}
	
	@RequestMapping(value = "media.do")
	public String initmedia() throws Exception {

		return "page_2/media.tiles";
	}
	
	@RequestMapping(value = "profile.do")
	public String initprofile() throws Exception {

		return "page_2/profile.tiles";
	}
}
