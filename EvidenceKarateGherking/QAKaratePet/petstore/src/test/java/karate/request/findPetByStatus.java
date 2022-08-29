package karate.request;

import com.intuit.karate.junit5.Karate;

public class findPetByStatus {
    @Karate.Test
    Karate testSample(){ return Karate.run("classpath:Karate/findPetByStatus/findPetByStatus.feature").relativeTo(getClass());
    }

}
