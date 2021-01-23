package modal;

import java.util.HashMap;
import java.util.Map;

import com.pojo.Product;

public class GlobalMap {
	public static Map<Product,Integer> Cartvalue=new HashMap<Product, Integer>();

	public static Map<Product, Integer> getCartvalue() {
		return Cartvalue;
	}

	public static void setCartvalue(Map<Product, Integer> cartvalue) {
		Cartvalue = cartvalue;
	}

}
