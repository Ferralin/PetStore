package karate.request;

import com.intuit.karate.junit5.Karate;

public class Createpet {

    @Karate.Test
    Karate testSample(){ return Karate.run("classpath:Karate/createPet/createpet.feature").relativeTo(getClass());
    }
}
