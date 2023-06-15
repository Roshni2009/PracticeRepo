package examples.users;

import com.intuit.karate.junit5.Karate;

public class TestRunner {
	@Karate.Test
	Karate testUsers() {
		// return Karate.run("GET").relativeTo(getClass());
		//return Karate.run("POST").relativeTo(getClass());
		//return Karate.run("PUT").relativeTo(getClass());
		//return Karate.run("DELETE").relativeTo(getClass());
	    return Karate.run("config").relativeTo(getClass());
	}    


}
