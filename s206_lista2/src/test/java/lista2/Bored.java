package lista2.bored;

import com.intuit.karate.junit5.Karate;

class BoredRunner {
    
    @Karate.Test
    Karate testBored() {
        return Karate.run("bored").relativeTo(getClass());
    }    

}