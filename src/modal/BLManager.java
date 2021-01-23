package modal;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

import com.pojo.*;

public class BLManager 
{
	SessionFactory ses=new Configuration().configure().buildSessionFactory();
	Session s=ses.openSession();
	
	public boolean isExistEmail(String email) 
	{
		Register r=searchByEmail(email);
		if(r!=null && r.getEmail().equals(email))
			return true;
		else
			return false;
	}
	public Register searchByEmail(String email) 
	{
		Session s=ses.openSession();
		Criteria c=s.createCriteria(Register.class);
	    c.add(Restrictions.eq("email",email));
	    Register r=(Register) c.uniqueResult();
	    return r;
	}
	public boolean isExistPhone(String phone) 
	{
		Register r=searchByPhone(phone);
		if(r!=null && r.getPhone().equals(phone))
			return true;
		else
			return false;
	}
	public Register searchByPhone(String phone) 
	{
		Session s=ses.openSession();
		Criteria c=s.createCriteria(Register.class);
	    c.add(Restrictions.eq("phone",phone));
	    Register r=(Register) c.uniqueResult();
	    return r;
	}
	public boolean isExistPassword(String password) 
	{
		Register r=searchByPassword(password);
		if(r!=null && r.getPassword().equals(password))
			return true;
		else
			return false;
	}
	public Register searchByPassword(String password) 
	{
		Session s=ses.openSession();
		Criteria c=s.createCriteria(Register.class);
	    c.add(Restrictions.eq("password",password));
	    Register r=(Register) c.uniqueResult();
	    return r;
	}
	public boolean isExistUsername(String username) 
	{
		Admin a=searchByUsername(username);
		if(a!=null && a.getUsername().equals(username))
			return true;
		else
			return false;
	}
	public Admin searchByUsername(String username ) 
	{
		Session s=ses.openSession();
		Criteria c=s.createCriteria(Admin.class);
	    c.add(Restrictions.eq("username",username));
	    Admin a=(Admin) c.uniqueResult();
	    return a;
	}
	public boolean isExistaPassword(String apassword) 
	{
		Admin a=searchByaPassword(apassword);
		if(a!=null && a.getApassword().equals(apassword))
			return true;
		else
			return false;
	}
	public Admin searchByaPassword(String apassword) 
	{
		Session s=ses.openSession();
		Criteria c=s.createCriteria(Admin.class);
	    c.add(Restrictions.eq("apassword",apassword));
	    Admin a=(Admin) c.uniqueResult();
	    return a;
	}
	public boolean isExistfid(Register register) 
	{
		Demo r=searchByfid(register);
		if(r!=null && r.getRegister().getId().equals(register))
			return true;
		else
			return false;
	}
	public Demo searchByfid(Register register) 
	{
		Session s=ses.openSession();
		Criteria c=s.createCriteria(Demo.class);
	    c.add(Restrictions.eq("register",register));
	    Demo r=(Demo) c.uniqueResult();
	    return r;
	}
	public boolean isExistmid(Machinery machinery) 
	{
		Demo m=searchBymid(machinery);
		if(m!=null && m.getMachinery().getMid().equals(machinery))
			return true;
		else
			return false;
	}
	public Demo searchBymid(Machinery machinery) 
	{
		Session s=ses.openSession();
		Criteria c=s.createCriteria(Demo.class);
	    c.add(Restrictions.eq("machinery",machinery));
	    Demo m=(Demo) c.uniqueResult();
	    return m;
	}
	public void insertdata(Register r)
	{
		Transaction t=s.beginTransaction();
		s.save(r);
		t.commit();
		s.close();
	}
	public List<Register> getALLrecords()
	{
		Criteria c=s.createCriteria(Register.class);
		List<Register> list=c.list();
		return list;
	}
	public Register getRecordById(int id) 
	{
		Session s=ses.openSession();
		Criteria c=s.createCriteria(Register.class);
		c.add(Restrictions.eq("id", id));
		Register r=(Register) c.uniqueResult();
		//System.out.println("BLManagaer"+r.getId());
		s.disconnect();
		//s.close(); // put it for admin module can delete registered members without this and remove this while logging in
		return r;
	}
	public void updateProduct(Product p)
	{
		Session s2=ses.openSession();
		Transaction t=s2.beginTransaction();
		s2.merge(p);
		t.commit();
		s2.disconnect();
	}
	public void updateRecord(Register r) 
	{
		if(!s.isOpen())
		{
			s=ses.openSession();
		}
		Transaction t=s.beginTransaction();
		s.update(r);
		t.commit();
		s.close();
	}
	public void deleteRecord(Register r) 
	{
		// TODO Auto-generated method stub
		/*if(!s.isOpen())
		{
			s=ses.openSession();
		}*/
		Session	s6=ses.openSession();
		Transaction t=s6.beginTransaction();
		s6.delete(r);
		t.commit();
		s6.close();
	}
	public void insertproduct(Product p)
	{
		Transaction t=s.beginTransaction();
		s.save(p);
		t.commit();
		s.close();
	}
	public List<Product> getProducts()
	{
		Criteria c=s.createCriteria(Product.class);
		List<Product> list=c.list();
		return list;
	}
	public Product getRecordByPid(int pid) 
	{
		Session s=ses.openSession();
		Criteria c=s.createCriteria(Product.class);
		c.add(Restrictions.eq("pid", pid));
		Product p =(Product) c.uniqueResult();
		s.disconnect();
		return p;
	}
	public void deleteProduct(Product p) 
	{
		if(!s.isOpen())
		{
			s=ses.openSession();
		}
		Transaction t=s.beginTransaction();
		s.delete(p);
		t.commit();
		s.close();
	}
	public void insertfeedback(Contact c)
	{
		Transaction t=s.beginTransaction();
		s.save(c);
		t.commit();
		s.close();
	}
	public List<Contact> getContacts()
	{
		Criteria c=s.createCriteria(Contact.class);
		List<Contact> list=c.list();
		return list;
	}
	public Contact getRecordByCid(int cid) 
	{
		Criteria c=s.createCriteria(Contact.class);
		c.add(Restrictions.eq("cid", cid));
		Contact c1 =(Contact)c.uniqueResult();
		return c1;
	}
	public void deleteContact(Contact c1) 
	{
		if(!s.isOpen())
		{
			s=ses.openSession();
		}
		Transaction t=s.beginTransaction();
		s.delete(c1);
		t.commit();
		s.close();
	}
	public void insertsoil(Soiltest s1)
	{
		Transaction t=s.beginTransaction();
		s.save(s1);
		t.commit();
		s.close();
	}
	public List<Soiltest> getsoiltest()
	{
		Criteria c=s.createCriteria(Soiltest.class);
		List<Soiltest> list=c.list();
		return list;
	}
	public Soiltest getRecordByStid(int stid) 
	{
		Criteria c=s.createCriteria(Soiltest.class);
		c.add(Restrictions.eq("stid", stid));
		Soiltest s1 =(Soiltest)c.uniqueResult();
		return s1;
	}
	public List<Soiltest> getsoilByid(Register r) {
		s=ses.openSession();
		Criteria c=s.createCriteria(Soiltest.class);
		c.add(Restrictions.eq("register", r));
		List<Soiltest> li=c.list();
		return li;	
	}
	public List<Demo> getdemoByid(Register r) {
		s=ses.openSession();
		Criteria c=s.createCriteria(Demo.class);
		c.add(Restrictions.eq("register", r));
		List<Demo> li=c.list();
		return li;	
	}
	public void deleteSoil(Soiltest s1) 
	{
		if(!s.isOpen())
		{
			s=ses.openSession();
		}
		Transaction t=s.beginTransaction();
		s.delete(s1);
		t.commit();
		s.close();
	}
	public void insertdemo(Demo d)
	{
		s=ses.openSession();
		Transaction t=s.beginTransaction();
		s.save(d);
		t.commit();
		s.close();
	}
	public Machinery getRecordByMid(int mid) 
	{
		Criteria c=s.createCriteria(Machinery.class);
		c.add(Restrictions.eq("mid", mid));
		Machinery m =(Machinery)c.uniqueResult();
		return m;
	}
	public List<Machinery> getallMachinery()
	{
		Criteria c=s.createCriteria(Machinery.class);
		List<Machinery> list=c.list();
		return list;
	}
	public List<Demo> getdemo()
	{
		Criteria c=s.createCriteria(Demo.class);
		List<Demo> list=c.list();
		return list;
	}
	public Demo getRecordByDid(int did) 
	{
		Criteria c=s.createCriteria(Demo.class);
		c.add(Restrictions.eq("did", did));
		Demo d=(Demo)c.uniqueResult();
		return d;
	}
	public void deleteDemo(Demo d) 
	{
		if(!s.isOpen())
		{
			s=ses.openSession();
		}
		Transaction t=s.beginTransaction();
		s.delete(d);
		t.commit();
		s.close();
	}
	public void deleteMachine(Machinery m) 
	{
		if(!s.isOpen())
		{
			s=ses.openSession();
		}
		Transaction t=s.beginTransaction();
		s.delete(m);
		t.commit();
		s.close();
	}
	public Producttype getProductbyTypeID(int id) 
	{
		s=ses.openSession();
		Criteria criteria=s.createCriteria(Producttype.class);
		criteria.add(Restrictions.eq("tid", id));
		Producttype producttype=(Producttype) criteria.uniqueResult();
		return producttype;
	}
	public List<Product> getProductByType(Producttype producttype)
	{
		s=ses.openSession();
		Criteria criteria=s.createCriteria(Product.class);
		criteria.add(Restrictions.eq("producttype", producttype));
		List<Product> list=criteria.list();
		return list;
	}
	public Producttype getProductBytype(String type) 
	{
		s=ses.openSession();
		Criteria criteria=s.createCriteria(Producttype.class);
		criteria.add(Restrictions.eq("producttype", type));
		Producttype p=(Producttype) criteria.uniqueResult();
		return p;
	}
	public List<Producttype> getAllProductType()
	{
		s=ses.openSession();
		Criteria criteria=s.createCriteria(Producttype.class);
		List<Producttype> list=criteria.list();
		return list;
	}
	public void addProductType(Producttype ptype) 
	{
		s=ses.openSession();
		Transaction t=s.beginTransaction();
		s.save(ptype);
		t.commit();
		s.close();
		
	}
	public Producttype getRecordByTid(int tid) 
	{
		Criteria c=s.createCriteria(Producttype.class);
		c.add(Restrictions.eq("tid", tid));
		Producttype pt =(Producttype) c.uniqueResult();
		return pt;
	}
	public void deleteProducttype(Producttype pt) 
	{
		if(!s.isOpen())
		{
			s=ses.openSession();
		}
		Transaction t=s.beginTransaction();
		s.delete(pt);
		t.commit();
		s.close();
	}
	public void updateMachine(Machinery m) 
	{
		if(!s.isOpen())
		{
			s=ses.openSession();
		}
		Transaction t=s.beginTransaction();
		s.update(m);
		t.commit();
		s.close();
	}
	public void insertmachine(Machinery m)
	{
		s=ses.openSession();
		Transaction t=s.beginTransaction();
		s.save(m);
		t.commit();
		s.close();
	}
	public List<Producttype> getProducttype()
	{
		Criteria c=s.createCriteria(Producttype.class);
		List<Producttype> list=c.list();
		return list;
	}
	public void updateProducttype(Producttype pt) 
	{
		if(!s.isOpen())
		{
			s=ses.openSession();
		}
		Transaction t=s.beginTransaction();
		s.update(pt);
		t.commit();
		s.close();
	}
	public List<Purchase> getallorders()
	{
		Criteria c=s.createCriteria(Purchase.class);
		List<Purchase> list=c.list();
		return list;
	}
	public Purchase getRecordByPurid(int purid) 
	{
		Criteria c=s.createCriteria(Purchase.class);
		c.add(Restrictions.eq("purid", purid));
		Purchase pur =(Purchase) c.uniqueResult();
		return pur;
	}
	public void deleteOrder(Purchase pur) 
	{
		if(!s.isOpen())
		{
			s=ses.openSession();
		}
		Transaction t=s.beginTransaction();
		s.delete(pur);
		t.commit();
		s.disconnect();
	}
	public void insertcart(Cart ca)
	{
		Session s=ses.openSession();
		Transaction t=s.beginTransaction();
		s.save(ca);
		t.commit();
	}
	public boolean isexistproduct(Register reg, Product key)
	{
		
		Cart ca=searchByProduct(reg,key);
		if(ca!=null)
		{
		boolean flag=isexistcartid(ca.getCartid());

		if(flag==true)
			return true;
		else
			return false;
		}
		else {
			return false;
		}
	}
	public boolean isexistcartid(int cart)
	{
		int ca1=searchbycart(cart);
		if(ca1==cart)
			return true;
		else
			return false;
	}
	public int searchbycart(int cart) 
	{
		Session s=ses.openSession();
		Criteria c=s.createCriteria(Cart.class);
		c.add(Restrictions.eq("cartid",cart));
		Cart ca=(Cart) c.uniqueResult();
	    return ca.getCartid();
		
	}
	public Cart searchByProduct(Register reg, Product key) 
	{
		Session s=ses.openSession();
		Criteria c=s.createCriteria(Cart.class);
		
		System.out.println(reg.toString());
		System.out.println(key.toString());
		
	    c.add(Restrictions.eq("register",reg));
	    c.add(Restrictions.eq("product",key));
	    Cart ca=(Cart) c.uniqueResult();
	    return ca;
	}
	public void deletecartItems(Cart cart) 
	{
		Session	s3=ses.openSession();
		Transaction t=s3.beginTransaction();
		s3.delete(cart);
		t.commit();
		s3.disconnect();
	}
	public Cart searchByPid(Product key) 
	{
		Session s=ses.openSession();
		Criteria c=s.createCriteria(Cart.class);
	    c.add(Restrictions.eq("product",key));
	    Cart cart=(Cart) c.uniqueResult();
	    return cart;
	}
	public void updatecartitems(Cart cart) 
	{
		if(!s.isOpen())
		{
			s=ses.openSession();
		}
		Transaction t=s.beginTransaction();
		s.update(cart);
		t.commit();
		s.close();
	}
	public List<Cart> getcartByid(Register r) 
	{
		Session s=ses.openSession();
		Criteria c=s.createCriteria(Cart.class);
		c.add(Restrictions.eq("register", r));
		List<Cart> li=c.list();
		s.disconnect();
		return li;	
	}
	public void insertorder(Purchase pur)
	{
		Session s4=ses.openSession();
		Transaction t=s4.beginTransaction();
		s4.save(pur);
		t.commit();
		s4.disconnect();
	}
	public List<Purchase> getorderByid(Register r) 
	{
		s=ses.openSession();
		Criteria c=s.createCriteria(Purchase.class);
		c.add(Restrictions.eq("register", r));
		List<Purchase> listpur=c.list();
		return listpur;	
	}
	public List<Purchase> getPurchaseByid(Register r) 
	{
		s=ses.openSession();
		Criteria c=s.createCriteria(Purchase.class);
		c.add(Restrictions.eq("register", r));
		List<Purchase> li=c.list();
		return li;	
	}
	
}
