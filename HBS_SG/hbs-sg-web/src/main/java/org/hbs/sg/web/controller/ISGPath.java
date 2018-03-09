package org.hbs.sg.web.controller;

import java.io.Serializable;

import org.hbs.util.EnumInterface;

public interface ISGPath extends Serializable
{
	public enum ESGUser implements EnumInterface
	{
		Employee, Producer, Student, SuperAdmin;
	}
	
	public String	ADD_ASSESSMENT_QUESTIONS			= "/b51c21875227c87bb362239f23fd1366";
	public String	ADD_AUTH_KEYGEN						= "/c54b280767442e7485d0fd640980cfc1";
	public String	ADD_EBOOKS							= "/a412ba0e3ffb38980d7c2f347967b3ca";
	public String	ADD_INFORMATION						= "/e20e5e5b79ca06d8f85a053de63d2cf8";
	public String	ADD_ORGANISTATION					= "/bf08745da5c91a28f4ef52f00f069480";
	public String	DASHBOARD_PAGE						= "/content/dashboard";
	public String	GENERATE_PDF						= "/f956d0bc033f6369bf2e443b6d2d2c27";
	public String	GET_CHAPTERS						= "/f4593337ee57632604ffdf95306f3d67/{courseId}";
	public String	GET_COURSES							= "/f68ac3a11b5644835aa0ec1a40019393/{courseGroupId}";
	public String	INFORMATION_ALERT					= "/a88171e2a114fd90a78e2ebfdf260214";
	public String	INFORMATION_ALERT_PAGE				= "/content/search-information-alert";
	public String	KEY_GENERATE_PAGE					= "/content/generate-key";
	public String	PRE_ADD_AUTH_KEYGEN_PAGE			= "/content/generate-key";
	public String	PRE_ADD_PRACTISE_ASSESSMENT			= "/eaf075ce8c601d31fd61abcace431779";
	public String	ADD_PRACTISE_ASSESSMENT				= "/a27a7a2e2d4eec556676419251729727";
	public String	INIT_PRACTISE_ASSESSMENT			= "/aaed4dd8b31f1bf88f5227090f1edc95";
	public String	PRE_SEARCH_ASSESSMENT				= "/d0f9600d5f8d0b22a87adf6d58b32059";
	public String	PRE_SEARCH_ASSESSMENT_QUESTIONS		= "/bd73b98a32ed8d14650cb948dee7d408";
	public String	PRE_SEARCH_AUTH_KEYGEN				= "/a9dc3f7729b51d26dc20af48c03dfee6";
	public String	PRE_SEARCH_EBOOKS					= "/a500fe2139d875b2f6d9679600577191";
	public String	PRE_SEARCH_INFORMATION_ALERT		= "/dc58d3e1b340addb4a1bcc6968a4533d";
	public String	PRE_SEARCH_ORGANISTATION			= "/ba6443f8aa1c6e707ccb0cd4f03aa1e9";
	public String	SEARCH_ASSESSMENT					= "/abc97070154d606a0fa140bee2f18a0f";
	
	public String	SEARCH_ASSESSMENT_PAGE				= "/content/search-assessment";
	public String	SEARCH_ASSESSMENT_QUESTIONS_PAGE	= "/content/search-assessment-question";
	public String	SEARCH_AUTH_KEYGEN					= "/f241266cd5b6cdff9a50a61f6348f2f9";
	public String	SEARCH_AUTH_KEYGEN_PAGE				= "/content/search-auth-keygen";
	public String	SEARCH_EBOOKS						= "/b5610fae7ed7b4b0170d8832a978c938";
	public String	SEARCH_EBOOKS_PAGE					= "/content/search-ebooks";
	public String	SEARCH_ORGANISTATION				= "/f37b3a1c4eb15d15374d94f66b6ff3de";
	public String	SEARCH_ORGANISTATION_PAGE			= "/content/search-organisation";
	public String	VALIDATE_AUTH_KEYGEN				= "/ec00467b6343568e825c8987727352ea";
	
}
