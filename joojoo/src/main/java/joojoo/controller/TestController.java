package joojoo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/main")
public class TestController {
	
	@RequestMapping(method=RequestMethod.GET)
	public String Test(Model model){
		model.addAttribute("test", "테스트용 입니다.2");
		return "main";
	}
	
/*	@RequestMapping(method=RequestMethod.GET, params={"departmentId"})
	public String getDepartmentDetail(@RequestParam int departmentId, Model model){
		Department dept = service.getDepartmentById(departmentId);
		model.addAttribute("dept", dept);
		return "dept/detail";
	}
	
	@RequestMapping(value="/edit", method=RequestMethod.POST)
	public String updateDepartment(Department dept){
		try {
			service.updateDepartment(dept);
		} catch (ServiceFailException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Department newDept = service.getDepartmentById(dept.getDepartmentId());
		
		return "dept/detail";
	}*/
}
