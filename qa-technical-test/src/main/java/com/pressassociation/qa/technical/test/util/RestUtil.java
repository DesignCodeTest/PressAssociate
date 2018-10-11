package com.pressassociation.qa.technical.test.util;

import org.junit.Test;
import com.google.gson.JsonObject;

public class RestUtil {
	
	private static final String _ID = "_id";
	private static final String ARTIST = "artist";
	private static final String SONG = "song";
	private static final String PUBLISHDATE = "publishDate";
	private static final String __V = "__v";
	private static final String DATE_CREAATED = "date_created";
	
	
	public static String getJsonBody (String _Id, String Artist, String Song,String PublishDate,String __v,String Date_created)
	{
		JsonObject jsonObject = new JsonObject();
		
		jsonObject.addProperty(_ID, _Id);
		jsonObject.addProperty(ARTIST, Artist);
		jsonObject.addProperty(SONG, Song);
		jsonObject.addProperty(PUBLISHDATE, PublishDate);
		jsonObject.addProperty(__V, __v);
		jsonObject.addProperty(DATE_CREAATED, Date_created);
		
		return jsonObject.toString();		
	}
	
	@Test
	public void test()
	{
		System.out.println(RestUtil.getJsonBody("596cbda86ed7c10011a68b32", "Lady Gaga","Just Dance", "2017-09-01T00:00:00.000Z", "0", "2017-07-17T13:37:44.559Z"));
	}
	

}
