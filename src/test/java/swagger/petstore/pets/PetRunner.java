package swagger.petstore.pets;

import com.intuit.karate.junit5.Karate;

public class PetRunner {
    @Karate.Test
    Karate test (){
        return Karate.run().relativeTo(getClass());
    }
}
