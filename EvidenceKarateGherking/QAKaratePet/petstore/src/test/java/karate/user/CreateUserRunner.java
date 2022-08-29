package karate.user;

import com.intuit.karate.junit5.Karate;
public class CreateUserRunner {
    @Karate.Test
    Karate createUser(){
        return Karate.run("classpath:Karate/user/createUser.feature").relativeTo(getClass());
    }
}
