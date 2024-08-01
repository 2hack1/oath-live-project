package com.my.realpro.service;

import java.util.List;

import com.my.realpro.entity.OrgNagrik;

public interface OrgNagerikService {

	// OrgNagrik Data Save.
	public void saveOrgNagrik(OrgNagrik orgNagrik);

	// OrgNagrik Data GetAll.
	public List<OrgNagrik> getAll();

	// OrgNagrik Data Get By Email And Password.
	public OrgNagrik getByEmailAndPassword(String email, String password);

	// OrgNagrik Data Get By Email.
	public OrgNagrik getByEmail(String email);

	// Update Data OrgNagrik
	public void updataData(OrgNagrik orgNagrik);
}
