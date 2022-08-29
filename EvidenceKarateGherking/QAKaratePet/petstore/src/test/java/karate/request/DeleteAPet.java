package karate.request;

import com.intuit.karate.junit5.Karate;

public class DeleteAPet {
    @Karate.Test
    Karate testSample(){ return Karate.run("classpath:Karate/deleteAPet/DeleteAPet.feature").relativeTo(getClass());
    }
}
