package june01_rest_Assured_day1;

import org.testng.annotations.Test;
import org.testng.AssertJUnit;
import com.intuit.karate.http.Response;

import io.restassured.RestAssured;
import io.restassured.response.ResponseOptions;


public class Test_Google {
	
	@Test
	    public void do_google_get_call_validation() {
		RestAssured.baseURI ="https://google.com";
		Response google_response = (Response) RestAssured.get();
		int google_status_code = ((ResponseOptions<io.restassured.response.Response>) google_response).getStatusCode();
		System.out.println("The status code  =" +google_status_code);
		AssertJUnit.assertEquals(google_status_code, 200);
		String google_response_text = google_response.getBodyAsString();
		System.out.println("The response is -->" +google_response_text);
		AssertJUnit.assertTrue(google_response_text.contains("<title>Google</title>"));
		
		
	}
	
	@Test
    public void do_w3school_get_call_validation() {
	RestAssured.baseURI ="https://google.com";
	Response W3Schools_response = (Response) RestAssured.get();
	int W3Schools_status_code = ((ResponseOptions<io.restassured.response.Response>) W3Schools_response).getStatusCode();
	System.out.println("The status code  =" +W3Schools_status_code);
	AssertJUnit.assertEquals(W3Schools_status_code, 200);
	String W3Schools_response_text = W3Schools_response.getBodyAsString();
	System.out.println("The response is -->" +W3Schools_response_text);
	AssertJUnit.assertTrue(W3Schools_response_text.contains("<title>W3Schools Online Web Tutorials</title>"));
	
	
}
	
	
	

}
