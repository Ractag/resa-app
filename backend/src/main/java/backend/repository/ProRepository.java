package backend.repository;

import backend.model.Pro;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProRepository extends JpaRepository<Pro, Long> {
}