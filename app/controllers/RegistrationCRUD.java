package controllers;

import play.mvc.With;

@With(Secure.class)
@CRUD.For(models.Registration.class)
public class RegistrationCRUD extends CRUD {

	
}
