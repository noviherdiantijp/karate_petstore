package examples.tests;

import com.intuit.karate.junit5.Karate;

public class RunnerRapidapi {
    @Karate.Test
    public Karate runMealPlanRequest() {
        return Karate.run("rapidapi").relativeTo(getClass());
    }
}
