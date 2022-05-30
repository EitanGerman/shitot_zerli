package entities;

import java.io.Serializable;

public class Item extends ProductsBase implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//private int itemID; //
	//private String itemName; //
	//private String itemColor; //
	//private double itemPrice; //
	//private String itemType; //
	//private String imagePath; //
	
	public Item(int id, String name, String color, double price, String type, String imagePath, double ratio) {
		super(id, name, color, price, type, imagePath, ratio);
	}
	
	public Item(int id, double price, double ratio) {
		super(id,price, ratio);
	}
	

}
