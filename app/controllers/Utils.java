package controllers;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.TimeZone;

public class Utils {
	public static final String STR_DEFAULT_DATE_FORMAT = "yyyy-MM-dd'T'HH:mm";
	public static final String STR_BRAZIL_TIMEZONE = "America/Sao_Paulo";
	
	public static Calendar getBrazilCalendar() {
		TimeZone tz = TimeZone.getTimeZone(STR_BRAZIL_TIMEZONE);
		TimeZone.setDefault(tz);
		Calendar calendar = GregorianCalendar.getInstance(tz);
		return calendar;
	}
	
	public static String getCurrentDateTime() {
		DateFormat dateFormat = new SimpleDateFormat(STR_DEFAULT_DATE_FORMAT);
		Calendar cal = getBrazilCalendar();
		return dateFormat.format(cal.getTime());
	}
}
