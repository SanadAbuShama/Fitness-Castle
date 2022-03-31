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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fitnesscastle.models.User;
import fitnesscastle.services.UserService;
import fitnesscastle.validator.UserValidator;

//.. don't forget to inlcude all your imports! ..

@Controller
public class UsersController {

	@Autowired
	private UserService userService;

	@Autowired
	private UserValidator userValidator;

	@GetMapping("/registration")
	public String registerForm(@Valid @ModelAttribute("user") User user) {
		return "registrationPage.jsp";
	}

	@PostMapping("/registration")
	public String registration(@Valid @ModelAttribute("user") User user, BindingResult result, Model model,
			HttpSession session) {
		userValidator.validate(user, result);
		if (result.hasErrors()) {
			return "registrationPage.jsp";
		}
		userService.saveWithUserRole(user);
		return "redirect:/home";
	}

	@RequestMapping("/admin")
	public String adminPage(Principal principal, Model model) {
		String email = principal.getName();
		model.addAttribute("currentUser", userService.findByEmail(email));
		return "adminPage.jsp";
	}

	@RequestMapping("/login")
	public String login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model model) {
		if (error != null) {
			model.addAttribute("errorMessage", "Invalid Credentials, Please try again.");
		}
		if (logout != null) {
			model.addAttribute("logoutMessage", "Logout Successful!");
		}
		return "loginPage.jsp";
	}

	@RequestMapping("/users/{id}")
	public String login(@PathVariable("id") Long id, Model model) {

		User loggedUser = userService.findUserById(id);
		model.addAttribute("loggedUser", loggedUser);
		return "profilePage.jsp";
	}

	@RequestMapping(value = { "/", "/home" })
	public String home(Principal principal, Model model) {
		// 1
		String email = principal.getName();
		model.addAttribute("currentUser", userService.findByEmail(email));
		return "homePage.jsp";
	}

	@GetMapping("/info")
	public String index(Model model) {

		return "info.jsp";

	}
	@GetMapping("/users/{userId}/edit")
	public String editForm(@PathVariable("userId") Long id, HttpSession session, Model model) {
			User thisuser = userService.findUserById(id);
			model.addAttribute("user", thisuser);
			return "editprofile..jsp";
		}
		
	@PutMapping("/users/{id}/edit")
    public String update (@Valid @ModelAttribute("user") User user, BindingResult result,@PathVariable("id") Long id,Model model) {
		userService.updateuser(user);
                return "redirect:/exercies";
            
        }

	@GetMapping("/aboutus")
	public String aboutus(Model model) {
		
		return "aboutus.jsp";

	}
}
