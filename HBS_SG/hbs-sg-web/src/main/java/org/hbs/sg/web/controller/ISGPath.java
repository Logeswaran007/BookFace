package org.hbs.sg.web.controller;

import java.io.Serializable;

import org.hbs.util.EnumInterface;

public interface ISGPath extends Serializable
{
	public enum ESGUser implements EnumInterface
	{
		Employee, Producer, Student, SuperAdmin;
	}

	public String	DASHBOARD_PAGE					= "/content/dashboard";
	public String	ADD_AUTH_KEYGEN					= "/c54b280767442e7485d0fd640980cfc1";
	public String	PRE_ADD_AUTH_KEYGEN_PAGE		= "/content/generate-key";
	public String	PRE_SEARCH_AUTH_KEYGEN			= "/a9dc3f7729b51d26dc20af48c03dfee6";
	public String	SEARCH_AUTH_KEYGEN				= "/f241266cd5b6cdff9a50a61f6348f2f9";
	public String	SEARCH_AUTH_KEYGEN_PAGE			= "/content/search-auth-keygen";
	public String	ADD_INFORMATION					= "/e20e5e5b79ca06d8f85a053de63d2cf8";
	public String	PRE_SEARCH_INFORMATION_ALERT	= "/dc58d3e1b340addb4a1bcc6968a4533d";
	public String	INFORMATION_ALERT				= "/a88171e2a114fd90a78e2ebfdf260214";
	public String	INFORMATION_ALERT_PAGE			= "/content/search-information-alert";
	public String	VALIDATE_AUTH_KEYGEN			= "/ec00467b6343568e825c8987727352ea";
	public String	ADD_ORGANISTATION				= "/bf08745da5c91a28f4ef52f00f069480";
	public String	PRE_SEARCH_ORGANISTATION		= "/ba6443f8aa1c6e707ccb0cd4f03aa1e9";
	public String	SEARCH_ORGANISTATION			= "/f37b3a1c4eb15d15374d94f66b6ff3de";
	public String	SEARCH_ORGANISTATION_PAGE		= "/content/search-organisation";

	public String	GENERATE_PDF					= "/f956d0bc033f6369bf2e443b6d2d2c27";
	public String	PRE_SEARCH_EXAM					= "/ec2fb989808da07be902872923ed2b95";
	public String	SEARCH_EXAM_PAGE				= "/content/search-online-exam";
	public String	SEARCH_ASSESSMENT				= "/d9efa4727b0d8d00515fdac178a7bff7";

}
