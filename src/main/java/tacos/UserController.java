package tacos;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import tacos.entity.Users;
import tacos.repository.UserRepository;

@RestController
public class UserController {

    private final UserRepository userRepository;

    public UserController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @GetMapping("/users")
    public Iterable<Users> getAllUsers() {
        return userRepository.findAll(); // Получаем всех пользователей из репозитория
    }
}
