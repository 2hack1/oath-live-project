package com.my.realpro.service;

import java.io.Serializable;
import java.util.Iterator;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Service;

import com.my.realpro.entity.Nagrik;
import com.my.realpro.entity.OrgNagrik;

@Service
public class NagrikServiceImp implements NagrikService {
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Override
	@Transactional
	public void saveNagrik(Nagrik nagrik) {
		this.hibernateTemplate.save(nagrik);
	}

	@Override
	public List<Nagrik> getAll() {
		return hibernateTemplate.loadAll(Nagrik.class);
		
	}
	
	

	@Override
	public Nagrik getByEmail(String email) {
			Iterator<Nagrik> iterator = getAll().iterator();
			while (iterator.hasNext()) {
				Nagrik nagrik = iterator.next();
				if (nagrik.getEmail().equals(email)) {
					return nagrik;
				}
			}
		return null;
	}

	@Override
	public Nagrik getByEmailAndPassword(String email, String password) {
		Iterator<Nagrik> iterator = getAll().iterator();
		while (iterator.hasNext()) {
			Nagrik nagrik = iterator.next();
			if (nagrik.getEmail().equals(email) && nagrik.getPassword().equals(password)) {
				return nagrik;
			}
		}
		return null;
	}

	@Override
	@Transactional
	public void updateData(Nagrik nagrik) {
		hibernateTemplate.update(nagrik);
	}

}
