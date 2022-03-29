package fitnesscastle.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import fitnesscastle.models.Program;

//.. imports .. //

@Repository
public interface ProgramRepository extends CrudRepository<Program, Long> {

}