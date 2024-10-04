package swagger.petstore.users;

import com.intuit.karate.junit5.Karate;

public class UserRunner {
    @Karate.Test
    Karate test (){
        return Karate.run().relativeTo(getClass());
    }
}
