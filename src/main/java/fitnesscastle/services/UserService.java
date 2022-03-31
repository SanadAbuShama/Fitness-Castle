package fitnesscastle.services;

import java.util.Optional;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import fitnesscastle.models.Program;
import fitnesscastle.models.User;
import fitnesscastle.repositories.RoleRepository;
import fitnesscastle.repositories.UserRepository;

@Service
public class UserService {
	private UserRepository userRepository;
	private RoleRepository roleRepository;
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	public UserService(UserRepository userRepository, RoleRepository roleRepository,
			BCryptPasswordEncoder bCryptPasswordEncoder) {
		this.userRepository = userRepository;
		this.roleRepository = roleRepository;
		this.bCryptPasswordEncoder = bCryptPasswordEncoder;
	}

	// 1
	public void saveWithUserRole(User user) {
		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		user.setRoles(roleRepository.findByName("ROLE_USER"));
		userRepository.save(user);
	}

	// 2
	public void saveUserWithAdminRole(User user) {
		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		user.setRoles(roleRepository.findByName("ROLE_ADMIN"));
		userRepository.save(user);
	}

	// 3
	public User findByEmail(String email) {
		return userRepository.findByEmail(email);
	}

	public User findUserById(Long id) {
		Optional<User> u = userRepository.findById(id);
		if (u.isPresent()) {
			return u.get();
		} else {
			return null;
		}
	}

	public void subscribeToProgram(String userEmail, Program program) {
		User loggedUser = this.findByEmail(userEmail);

		loggedUser.setSubscribedProgram(program);
		userRepository.save(loggedUser);
	}
}
