package com.danweikaihu;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

public class DanWeiKaiHuDao {
	public Session getSession(){
		SessionFactory sf=new AnnotationConfiguration().configure().buildSessionFactory();
		return sf.openSession();
	}
	public void insert(DanWeiKaiHu d){
		Session s=getSession();
		Transaction ts=s.beginTransaction();
		s.save(d);
		ts.commit();
	}
    public DanWeiKaiHu findById( java.lang.Integer id) {
        	DanWeiKaiHu instance = (DanWeiKaiHu) getSession()
                    .get("com.danweikaihu.DanWeiKaiHu", id);
            return instance;
    }
    public void update( DanWeiKaiHu dwkh) {
    	Session s=getSession();
		Transaction ts=s.beginTransaction();
		s.update(dwkh);
		ts.commit();
    }
    public void delete(DanWeiKaiHu dwkh){
    	Session s=getSession();
		Transaction ts=s.beginTransaction();
		s.delete(dwkh);
		ts.commit();
    }
}
