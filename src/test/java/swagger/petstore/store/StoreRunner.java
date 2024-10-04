package swagger.petstore.store;

import com.intuit.karate.junit5.Karate;

public class StoreRunner {
    @Karate.Test
    Karate test (){
        return Karate.run().relativeTo(getClass());
    }
}
