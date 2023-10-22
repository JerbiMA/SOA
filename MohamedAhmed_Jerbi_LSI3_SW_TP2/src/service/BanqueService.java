package service;

import java.util.ArrayList;
import java.util.List;

public class BanqueService {
	List<Compte> comptes= new ArrayList<Compte>();
	double montant;
	public BanqueService(double montant){
		this.montant=montant;
		
	}
	public double conversion(double montant) {
		return montant * 3.36;
	}
	public Compte getCompte(int x) {
		return comptes.get(x);
	}
	public List<Compte> getComptes(){
		return comptes;
	}
	
}