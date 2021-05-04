package ecommerrce1.service;

import java.util.List;

import ecommerce1.beans.Admin;
import ecommerce1.beans.Item;

public interface FlipcartService {
public Admin authenticate(Integer id, String password);
	
	public boolean addItem(Item item);
	
	public boolean removeItem(Integer id);
	
	public Item searchItem(Integer id);
	
	public List<Item> getAllItems();
	
	public boolean updateItem(Item item);

}
