package karate.user;

import com.intuit.karate.junit5.Karate;
public class LoginUser {
    @Karate.Test
    Karate loginUser(){
        return Karate.run("classpath:Karate/user/loginUser.feature").relativeTo(getClass());
    }
}

