package tacos.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import tacos.entity.App_Users;

@Repository
public interface UserRepository extends JpaRepository<App_Users, Long> {
    App_Users findByUsername(String username);
}
