package fitnesscastle.controllers;

import java.security.Principal;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import fitnesscastle.models.Program;
import fitnesscastle.services.ProgramService;
//.. don't forget to inlcude all your imports! ..

@Controller
public class ProgramController {

	@Autowired
	private ProgramService programServ;

	@GetMapping("/programs")
	public String index(Model model) {

		return "programs.jsp";

	}

	@GetMapping("/admin/programs/new")
	public String renderNewForm(@ModelAttribute("newProgram") Program newProject, HttpSession session) {

		return "newProgram.jsp";

	}

	@PostMapping("/admin/programs")
	public String createProgram(@Valid @ModelAttribute("newProgram") Program newProgram, BindingResult result,
			Model model, Principal principal) {

		if (result.hasErrors()) {

			return "newProgram.jsp";
		} else {
			String email = principal.getName();
			programServ.createProgram(email, newProgram);
			return "redirect:/progams";
		}

	}

}
