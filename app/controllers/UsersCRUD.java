package controllers;

import play.mvc.With;

@CRUD.For(models.User.class)
@With(Secure.class)
public class UsersCRUD extends CRUD {

}
