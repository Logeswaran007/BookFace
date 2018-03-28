package org.hbs.admin.dao;

import java.io.Serializable;

import org.hbs.admin.controller.UserParam;

public interface UserDAO extends Serializable
{
	public boolean userLogAtLogOut(UserParam userParam);
	
}
