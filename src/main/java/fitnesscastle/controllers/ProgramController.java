package fitnesscastle.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import fitnesscastle.services.UserService;

//.. don't forget to inlcude all your imports! ..

@Controller
public class ProgramController {

	@Autowired
	private UserService userService;

	@GetMapping("/programs")
	public String index(Model model, HttpSession session) {
		return "programs.jsp";

	}

	@GetMapping("/programs/new")
	public String newProgram(Model model, HttpSession session) {
		return "newProgram.jsp";

	}

}
