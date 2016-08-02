package controllers;

import java.util.List;

import models.Country;
import models.Registration;
import play.data.validation.Valid;
import play.mvc.Controller;
import util.Utils;

public class Application extends Controller {

	public static void index() {
		List<Country> listCountries = Country.findAll();
		GenderEnum[] genderEnum = GenderEnum.values();
		List<Registration> listEnrolled = Registration.find("order by postedAt desc").fetch(10);
		render(listCountries, genderEnum, listEnrolled);
	}
	
	public static void registration() {
		List<Country> listCountries = Country.findAll();
		GenderEnum[] genderEnum = GenderEnum.values();
		render(listCountries, genderEnum);
	}

	public static void saveRegistrationForm(@Valid Registration registration) {
		if (validateForm(registration)) {
			registration.save();
			flash.success("Inscrição enviada com sucesso! :)", "");
			render("@success", registration);
			return;
		} else {
			GenderEnum[] genderEnum = GenderEnum.values();
			render("@registration", genderEnum, registration);
			return;
		}
	}
	
	public static void print() {
		render();
	}
	
	public static void oQueLevar() {
		render();
	}
	
	public static void info() {
		render();
	}
	
	public static void map() {
		render();
	}

	public static void success(Registration registration) {
		render(registration);
	}

	private static boolean validateForm(Registration registration) {
		boolean retorno = false;
		validation.valid(registration);
		if (Registration.find("byEmail", registration.getEmail()).first() != null) {
			flash.error("E-mail já cadastrado!", "");
			retorno = false;
		}
		if (!Utils.isValidDate(registration.getBirthdate())) {
			flash.error("A data de nascimento deve estar no formato 01/01/2001.");
			retorno = false;
		}
		if (registration.gender == null) {
			flash.error("Selecione o sexo.");
			retorno = false;
		}
		if (registration.getStateId() == 0) {
			flash.error("Favor, selecione o estado.");
		}
		if (registration.getCityId() == 0) {
			flash.error("Favor, selecione a cidade.");
		}
		if (registration.getAge() < 18) {
			flash.error("Favor, insira o nome do responsável.");
			flash.error("Favor, insira o RG do responsável.");
		}
		if (!registration.isAgreeTerm()) {
			flash.error("Para continuar, é preciso concordar com o regulamento.");
			retorno = false;
		}
		if (validation.hasErrors()) {
			GenderEnum[] genderEnum = GenderEnum.values();
			params.flash();
			validation.keep();
			retorno = false;
			render("@registration", genderEnum, registration);
		} else {
			retorno = true;
		}
		return retorno;
	}
}