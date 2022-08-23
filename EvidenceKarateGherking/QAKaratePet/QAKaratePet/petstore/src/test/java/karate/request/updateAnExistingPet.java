package karate.request;

import com.intuit.karate.junit5.Karate;

public class updateAnExistingPet {
    @Karate.Test
    Karate testSample(){ return Karate.run("classpath:Karate/request/updateAnExistingPet.feature").relativeTo(getClass());
    }

}
