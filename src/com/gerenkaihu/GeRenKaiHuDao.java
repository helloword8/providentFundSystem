package com.gerenkaihu;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

import com.danweikaihu.DanWeiKaiHu;

public class GeRenKaiHuDao {
	public Session getSession() {
		SessionFactory sf = new AnnotationConfiguration().configure()
				.buildSessionFactory();
		return sf.openSession();
	}

	public void insert(GeRenKaiHu g) {
		Session s = getSession();
		Transaction ts = s.beginTransaction();
		s.save(g);
		ts.commit();
	}

	public GeRenKaiHu findById(java.lang.Integer id) {
		GeRenKaiHu instance = (GeRenKaiHu) getSession().get(
				"com.gerenkaihu.GeRenKaiHu", id);
		return instance;
	}

	public void update(GeRenKaiHu grkh) {
		Session s = getSession();
		Transaction ts = s.beginTransaction();
		s.update(grkh);
		ts.commit();
	}

	public void delete(GeRenKaiHu grkh) {
		Session s = getSession();
		Transaction ts = s.beginTransaction();
		s.delete(grkh);
		ts.commit();

	}
}
