package reqres.user;

import com.intuit.karate.junit5.Karate;

public class UserReqresRunner {
    @Karate.Test
    Karate testUser (){
            return Karate.run().relativeTo(getClass());
        }
}
