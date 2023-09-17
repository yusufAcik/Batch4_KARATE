package utilities;

import com.github.javafaker.Faker;

import java.util.HashMap;
import java.util.Map;

public class KraftDataGenerator {

    /**
     *   {
     *   "name": "test1111",
     *   "email": "test1111@krafttechexlab.com",
     *   "password": "123467"
     * }
     */
    public static Map<String,Object> createUser(){
        Faker faker = new Faker();
        String userName = faker.name().fullName();
        String userEmail = faker.internet().emailAddress();
        String password = faker.internet().password();
        Map<String,Object> map = new HashMap<>();
        map.put("name",userName);
        map.put("email",userEmail);
        map.put("password",password);
        return map;
    }

}
