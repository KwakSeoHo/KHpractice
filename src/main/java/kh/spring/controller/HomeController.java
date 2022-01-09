package kh.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

@Controller
public class HomeController {
	
	
	@RequestMapping("/")
	public String test() {
		return "test";
	}
	
	@RequestMapping("asJson")
	
	public String inputProc(String data1, String data2) {

	JsonObject obj = new JsonObject();

	obj.addProperty("data1", data1);

	obj.addProperty("data2", data2);

	return new Gson().toJson(obj);

	}
	
}
