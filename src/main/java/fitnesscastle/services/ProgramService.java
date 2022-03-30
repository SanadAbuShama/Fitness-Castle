package fitnesscastle.services;

import java.util.List;
import java.util.Optional;

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

	public void createProgram(String userEmail, Program newProgram, String imageUrl) {
		User user = userServ.findByEmail(userEmail);
		newProgram.setCreator(user);
		newProgram.setImage(imageUrl);
		programRepo.save(newProgram);

	}

	public Program findProgramById(Long id) {
		Optional<Program> p = programRepo.findById(id);
		if (p.isPresent()) {
			return p.get();
		} else {
			return null;
		}
	}

	public List<Program> allPrograms() {
		return programRepo.findAll();
	}

}