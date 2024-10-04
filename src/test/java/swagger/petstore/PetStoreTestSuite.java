package swagger.petstore;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class PetStoreTestSuite {
    @Test
    void  testParallel(){
        Results  results= Runner.path("classpath:swagger.petstore").parallel(2);
        assertEquals(0,results.getFailCount(), results.getErrorMessages());
    }
}
