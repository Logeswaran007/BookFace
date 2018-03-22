package org.hbs.admin.controller.param;

import org.hbs.admin.bo.UserBo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserServiceController
{
	
	@Autowired
	protected UserBo userBo;
	
}
