package fitnesscastle.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fitnesscastle.models.Program;
import fitnesscastle.models.User;
import fitnesscastle.repositories.ProgramRepository;

@Service
public class ProgramService {

	@Autowired
	private ProgramRepository programRepo;

	@Autowired
	private UserService userServ;

	public void createProgram(String userEmail, Program newProgram) {
		User user = userServ.findByEmail(userEmail);
		newProgram.setCreator(user);

		programRepo.save(newProgram);

	}

}