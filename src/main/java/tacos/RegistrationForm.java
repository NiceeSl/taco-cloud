package tacos;

import org.springframework.security.crypto.password.PasswordEncoder;
import lombok.Data;
import tacos.entity.App_Users;

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

    public App_Users toUser(PasswordEncoder passwordEncoder) {
        App_Users user = new App_Users();
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

