package tacos;

import org.springframework.security.crypto.password.PasswordEncoder;
import lombok.Data;
import tacos.entity.User;

@Data
public class RegistrationForm {

    private String username;
    private String password;
    private String fullname;
    private String street;
    private String city;
    private String state;
    private String zip;
    private String phone;

    public User toUser(PasswordEncoder passwordEncoder) {
        User user = new User();
        user.setUsername(username);
        user.setPassword(passwordEncoder.encode(password));
        user.setFullname(fullname);
        user.setStreet(street);
        user.setCity(city);
        user.setState(state);
        user.setZip(zip);
        user.setPhoneNumber(phone);
        return user;
    }
}

