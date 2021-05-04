package ecommerrce1.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ecommerce1.beans.Admin;
import ecommerce1.beans.Item;

@Service
	public class FlipcartServiceImpl implements FlipcartService{

		@Autowired
		FlipcartServiceImpl flipDao;
		
		public Admin authenticate(Integer id, String password) {
			
			Admin admin = flipDao.authenticate(id, password);
			return admin;
		}

		public boolean addItem(Item item) {
			boolean result = flipDao.addItem(item) ;
			return result;
		}

		
		public boolean removeItem(Integer id) {
			boolean result = flipDao.removeItem(id);
			return result;
		}

		public Item searchItem(Integer id) {
			Item item = flipDao.searchItem(id);
			return item;
		}

		public List<Item> getAllItems() {
			List<Item> list = flipDao.getAllItems();
			return list;
		}

		public boolean updateItem(Item item) {
			boolean result = flipDao.updateItem(item);
			return result;
		}

	}

