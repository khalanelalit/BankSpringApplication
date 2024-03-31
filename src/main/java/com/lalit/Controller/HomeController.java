package com.lalit.Controller;
import java.lang.ProcessBuilder.Redirect;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.lalit.Accounts.Accounts;


import com.lalit.Accounts.Accounts;
import com.lalit.AccountsDao.AccountsDao;



@Controller
public class HomeController {
	
 ApplicationContext context=new ClassPathXmlApplicationContext("Config.xml");
 
 Accounts accounts=(Accounts) context.getBean("accounts");
 AccountsDao accountDao=(AccountsDao) context.getBean("accountsDao");
 
 
 
 @RequestMapping("/")
 public String index()
 {
 	return"index";
 }
 
 
 
	
@RequestMapping("/login")

public String openLogin()
{
	return"login";
	
}


@RequestMapping(path="/afterLogin",method=RequestMethod.POST)
public String afterLogin(HttpServletRequest request)
{
	String email=request.getParameter("email");
	String password=request.getParameter("password");
	if(email.equals("admin@gmail.com")&& password.equals("admin"))
			{
				 return"adminDash";
			}
	else
	{
		return"error";
	}
	
	
}

@RequestMapping("/addAccount")
public String addAccount()
{
	return "addAccount";
}





@RequestMapping(path="/afterAdd",method=RequestMethod.POST)
public String afterAdd(HttpServletRequest request )
{
	
	int accNo=Integer.parseInt(request.getParameter("accNo"));
	String accName=request.getParameter("accName");
	String accMob=request.getParameter("accMob");
	String accType=request.getParameter("accType");
	double accBal=Double.parseDouble(request.getParameter("accBal"));
	
	accounts.setAccNo(accNo);
	accounts.setAccName(accName);
	accounts.setAccMob(accMob);
	accounts.setAccType(accType);
	accounts.setAccBal(accBal);
		
	int r= accountDao.addaccoutnt(accounts);
	if(r!=0){
		return "success";
		
	}else
	{
		return "error";
	}

}
@RequestMapping("/viewAll")
public String viewAccount(Model m)

{
	List<Accounts>allAccount=accountDao.getAllAccount();
	m.addAttribute("list",allAccount);
	return"viewAll";
}
@RequestMapping("/deposite")
public String deposite()
{
	return"deposite";
}



@RequestMapping(path="/afterDeposite",method=RequestMethod.POST)
public String afterDeposite(HttpServletRequest request)

{	
	int accNo=Integer.parseInt(request.getParameter("accNo"));
	accounts =accountDao.getaccount(accNo);
	double accBal=accounts.getAccBal();
//	accounts.setAccBal(accBal);
	double deposite=Double.parseDouble(request.getParameter("depBal"));
	double amount=accBal+deposite;
	accounts.setAccBal(amount);
	accountDao.updateAccount(accounts);
	return "success";
}

@RequestMapping("/widthraw")
public String widthraw()
{
	return"widthraw";
}



@RequestMapping(path="/afterWidthraw",method=RequestMethod.POST)
public String afterWidthraw(HttpServletRequest request)

{	
	int accNo=Integer.parseInt(request.getParameter("accNo"));
	accounts =accountDao.getaccount(accNo);
	double accBal=accounts.getAccBal();
//	accounts.setAccBal(accBal);
	double deposite=Double.parseDouble(request.getParameter("depBal"));
	double amount=accBal-deposite;
	accounts.setAccBal(amount);
	accountDao.updateAccount(accounts);
	return "success";
}

@RequestMapping("/delete")
public String delete()
{
	return"delete";
}



@RequestMapping(path="/afterDelete",method=RequestMethod.POST)
public String afterDelete(HttpServletRequest request)

{

	int accNo=Integer.parseInt(request.getParameter("accNo"));
	accounts =accountDao.getaccount(accNo);
	accountDao.deleteaccount(accNo);
	
	return"success";
	
}

@RequestMapping("/viewOne")
public String viewOne()
{
	return"viewOne";
}



@RequestMapping(path="/afterViewOne",method=RequestMethod.POST)
public String afterViewOne(Model model,HttpServletRequest request)

{

	int accNo=Integer.parseInt(request.getParameter("accNo"));
	accounts =accountDao.getaccount(accNo);
	model.addAttribute("accounts",accounts);
	
	return"view";
	
}





@RequestMapping(path="/delete/{accid}",method=RequestMethod.GET)
public RedirectView deleteAccount(@PathVariable("accid") int accNo,HttpServletRequest request)

{
	accountDao.deleteaccount(accNo);
	
	RedirectView redirectView = new RedirectView();
	redirectView.setUrl(request.getContextPath()+"/viewAll");
	return redirectView;
}

@RequestMapping(path="/Approve/{accid}",method=RequestMethod.GET)
public RedirectView updateAccount(@PathVariable("accid") int accNo,HttpServletRequest request)

{
	accountDao.getaccount(accNo);
	accounts =accountDao.getaccount(accNo);
	String type =  accounts.getAccType();
	type = "Current";
	accounts.setAccType(type);
	accountDao.updateAccount(accounts);
//	accounts.setAccNo("Approve");
	
	
	
	accountDao.updateAccount(accounts);
	RedirectView redirectView = new RedirectView();
	redirectView.setUrl(request.getContextPath()+"/viewAll");
	return redirectView;
}









}
