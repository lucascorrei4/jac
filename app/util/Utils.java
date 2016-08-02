package util;

import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import play.mvc.Controller;

public class Utils extends Controller {
	static SimpleDateFormat formatSimpleDate = new SimpleDateFormat("dd/MM/yyyy");

	public static String formatToMoney(double price) {
		NumberFormat formatter = new DecimalFormat("R$ #0.00");
		return formatter.format(price);
	}

	public static String formatDate(Date postedAt) {
		String format = "dd/MM/yyyy HH'h'mm";
		SimpleDateFormat sdformat = new SimpleDateFormat(format);
		String formattedDate = sdformat.format(postedAt);
		return formattedDate;
	}

	public static boolean isValidDate(String input) {
		try {
			formatSimpleDate.parse(input);
			return true;
		} catch (ParseException e) {
			return false;
		}
	}

	public static void main(String[] args) {
		System.out.println(isValidDate(new Date().toString()));
		System.out.println(isValidDate("27/11/1987"));
	}

	public static boolean validateEmail(String email) {
		validation.email(email);
		if (!validation.hasErrors()) {
			return false;
		}
		return true;
	}

	public static String replaceSpace(String name) {
		return name.replace(" ", "-");
	}

	public static boolean isNullOrEmpty(String text) {
		if (text == null || text.equals(" ")) {
			return true;
		}
		return false;
	}
}
