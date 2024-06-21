package interfaces;

import model.Food;

public interface IFoodDAO {
	public Food selectFood(int foodID);
	public void insertFood(Food food);
	public void updateFood(Food food,int ID);
	public void deleteFood(int foodID);
}
