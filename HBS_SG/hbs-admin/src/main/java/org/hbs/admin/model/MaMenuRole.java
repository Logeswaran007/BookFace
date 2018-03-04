package org.hbs.admin.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hbs.util.dao.ICRUDBean;

@Entity
@Table(name = "mamenurole")
public class MaMenuRole implements IProducersBase, ICRUDBean
{
	
	private static final long	serialVersionUID	= 7589959540619401593L;
	
	protected int				maMRAutoId;
	
	protected MaMenu			maMenu;
	
	protected IRoles			rlRoles;
	
	protected IProducers		producer;
	
	public MaMenuRole()
	{
		super();
	}
	
	public MaMenuRole(int maMRAutoId, MaMenu maMenu, IRoles rlRoles, IProducers producer)
	{
		super();
		this.maMRAutoId = maMRAutoId;
		this.maMenu = maMenu;
		this.rlRoles = rlRoles;
		this.producer = producer;
	}
	
	@ManyToOne(targetEntity = MaMenu.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "maMenuId")
	public MaMenu getMaMenu()
	{
		return maMenu;
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "maMRAutoId")
	public int getMaMRAutoId()
	{
		return maMRAutoId;
	}
	
	@ManyToOne(targetEntity = Producers.class, fetch = FetchType.LAZY)
	@JoinColumn(name = "producerId")
	public IProducers getProducer()
	{
		return producer;
	}
	
	@ManyToOne(targetEntity = Roles.class, fetch = FetchType.LAZY)
	@JoinColumn(name = "rlRoleId")
	public IRoles getRlRoles()
	{
		return rlRoles;
	}
	
	public void setMaMenu(MaMenu maMenu)
	{
		this.maMenu = maMenu;
	}
	
	public void setMaMRAutoId(int maMRAutoId)
	{
		this.maMRAutoId = maMRAutoId;
	}
	
	public void setProducer(IProducers producer)
	{
		this.producer = producer;
	}
	
	public void setRlRoles(IRoles rlRoles)
	{
		this.rlRoles = rlRoles;
	}
	
}