package interfaces;

import model.Review;

public interface IReviewDAO {
	public Review selectReview(int rid);
	public void insertReview(Review review);
	public void updateReview(Review review,int ID);
	public void deleteReview(int rid);
}
