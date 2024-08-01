package com.my.realpro.service;

import java.util.List;

import com.my.realpro.entity.Nagrik;

public interface NagrikService {

	// Save Nagrik Data.
	public void saveNagrik(Nagrik nagrik);

	// Get All Nagrik Data.
	public List<Nagrik> getAll();

	// Get Nagrik By Email Id.
	public Nagrik getByEmail(String email);

	// Get Nagrik By Email Id And Password.
	public Nagrik getByEmailAndPassword(String email,String password);
	
	// Update Data Nagrik.
	public void updateData(Nagrik nagrik);
	
}
