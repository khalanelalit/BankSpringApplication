package com.lalit.AccountsDao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.lalit.Accounts.Accounts;

@Component
public class AccountsDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
@Transactional
	public Integer addaccoutnt(Accounts accounts) {
		int i = (Integer) hibernateTemplate.save(accounts);	
		return i;
	}

public Accounts getaccount(int accNo) {
	
	Accounts acc=hibernateTemplate.get(Accounts.class, accNo);
	return acc;
	// TODO Auto-generated method stub
	
}


@Transactional
public void  updateAccount(Accounts accounts) {
	// TODO Auto-generated method stub
	hibernateTemplate.update(accounts);
	
}

@Transactional

public void deleteaccount(int no)
{
	Accounts ac=hibernateTemplate.get(Accounts.class, no);
	hibernateTemplate.delete(ac);

	 
	// TODO Auto-generated method stub
	
}
public List<Accounts> getAllAccount()
{
	return hibernateTemplate.loadAll(Accounts.class);
}

}
