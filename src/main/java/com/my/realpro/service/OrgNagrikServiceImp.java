package com.my.realpro.service;

import java.util.Iterator;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Service;

import com.my.realpro.entity.Nagrik;
import com.my.realpro.entity.OrgNagrik;

@Service
public class OrgNagrikServiceImp implements OrgNagerikService {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Override
	@Transactional
	public void saveOrgNagrik(OrgNagrik orgNagrik) {
		hibernateTemplate.save(orgNagrik);
	}

	@Override
	public List<OrgNagrik> getAll() {
		return hibernateTemplate.loadAll(OrgNagrik.class);
	}

	@Override
	public OrgNagrik getByEmailAndPassword(String email, String password) {
		Iterator<OrgNagrik> iterator = getAll().iterator();
		while (iterator.hasNext()) {
			OrgNagrik orgNagrik = iterator.next();
			if (orgNagrik.getEmail().equals(email) && orgNagrik.getPassword().equals(password)) {
				return orgNagrik;
			}
		}
		return null;
	}

	@Override
	public OrgNagrik getByEmail(String email) {
			Iterator<OrgNagrik> iterator = getAll().iterator();
			while (iterator.hasNext()) {
				OrgNagrik orgNagrik = iterator.next();
				if (orgNagrik.getEmail().equals(email)) {
					return orgNagrik;
				}
			}
		return null;
	}

	@Override
	@Transactional
	public void updataData(OrgNagrik orgNagrik) {
		hibernateTemplate.update(orgNagrik);
	}

}
