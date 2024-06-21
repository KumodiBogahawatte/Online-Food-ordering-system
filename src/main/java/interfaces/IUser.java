package interfaces;

import java.util.List;

import model.User;

public interface IUser {
	List<User>selectUser(int uID);
	public void updateUser(User user);
	public void deleteUser(int uID);
	public void insertUser(User user);
}
