package eCommerce.DAO;

import eCommerce.model.UserDetail;

public interface UserDAO {
	public UserDetail registerUser(UserDetail user);
    public UserDetail updateAddress(UserDetail user);
	
	public UserDetail getUser(String username);

}
