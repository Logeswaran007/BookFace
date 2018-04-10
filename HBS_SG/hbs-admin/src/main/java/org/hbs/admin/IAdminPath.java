package org.hbs.admin;

import org.hbs.util.EnumInterface;
import org.hbs.util.IConstProperty;

public interface IAdminPath extends IConstProperty
{
	public enum EBean implements EnumInterface
	{
		Consumer, Employee, Producer, Roles, User, UserAddress, UserLog, UserRoles
	}

	public enum EUserTemplate implements EnumInterface
	{
		User_Create, User_Create_Admin, User_Create_Consumer, User_Create_Employee, User_Create_Producer, User_Reset_Password;
	}

	public enum EUserAction implements EnumInterface
	{
		Login, Logout, Add_Organisation, Search_Organisation, Add_Assessment, Search_Assessment, Add_AssessmentQuestion, Search_AssessmentQuestion, Search_EBookCourseAttachment, Add_EBookCourseAttachment,
		Add_EBookChapterAttachment,Search_EBookChapterAttachment
	}

	public String	ACCESS_DENIED			= "/af05a1d6110ad25035e6e2f5c68b";
	public String	ADD_USER_DETAILS		= "/a1eb462ee857f96ff378c44a0a51bd97";
	public String	CHANGE_PASSWORD			= "/b3590290a9128b9362e199707c2b00a8";
	public String	CHANGE_PASSWORD_PAGE	= "/content/password-reset";
	public String	CONSUMER_REGISTER		= "/b76e3a33a9f946662dd15dac0c558b86";
	public String	CONSUMER_REGISTER_PAGE	= "/content/consumer-register";
	public String	DASHBOARD				= "/dc7161be3dbf2250c8954e560cc35060";
	public String	ERROR_404				= "/content/404";
	public String	ERROR_500				= "/content/500";
	public String	FORGET_PASSWORD			= "/f1af228b320b70a94a236d44271a6ea7";
	public String	HOME					= "/a6c241b8797f52e1e77317b96a20";
	public String	HOME_PAGE				= "/content/home";
	public String	INDEX					= "/";
	public String	LOCK					= "/d56b699830e77ba53855679234252dae";
	public String	LOCK_PAGE				= "/content/lock";
	public String	LOGIN					= "/d56b699830e77ba53855679cb1d252da";
	public String	LOGIN_ENTRY				= "/d56b699830e5679cb1d25277ba5385da";
	public String	LOGIN_PAGE				= "/content/login";
	public String	LOGOUT					= "/a440a662cc8253d7536e5aa17942";

	public String	PATTERN					= "(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\\S+$).{5,10}";
	public String	PRE_CONSUMER_REGISTER	= "/b76e3a33a9f9466dd15dac0c558b8662";
	public String	PRE_LOAD_PAGE			= "/b849acc3458c9ba2d432bcc3aaba2708/{page}";
	public String	PRE_SEARCH_USER			= "/bcca2120ed2c00bcf732c74ca8026490/{userType}";
	public String	PRODUCER_REGISTER		= "/e0235fc03c6bdd006f3752d062daa8e7";
	public String	REDIRECT				= "redirect:";

	public String	RESET_PASSWORD			= "/e8f9594d0dc192baed7def10b61fef68";
	public String	SEARCH_USER				= "/f55440aab2ac978e006d43ccf58d91b2";
	public String	SEARCH_USER_PAGE		= "/content/search-user";
	public String	UPDATE_PASSWORD			= "/b3590290a9128b9362e199707c2ba008";
	public String	USER_PRESEARCH			= "/f681dcb5065f68be96dd18ef0f6b1575";
	public String	USER_PREUPDATE			= "/b3eca7e53c9c0dc526046637dee97777";
	public String	USER_SEARCH				= "/8cfe7925ca22463003c8ae11a442a1dd";
	public String	USER_SEARCH_REDIRECT	= REDIRECT + USER_PRESEARCH;
	public String	USER_SEARCH_RESULTS		= "/6fc509a162cfba80b17455c20b44d447";

	public String	USER_UPDATE				= "/17c38dcdf8bd63b4105af7b3742b20d3";
	public String	USER_UPDATE_STATUS		= "/9640e72a62cf501d78249333c900be97";
	public String	WELCOME					= "/be4e59b9a2a2b5dffb918c0e86b3d7";
	public String	WELCOME_PAGE			= "/index";

}
