class AddRestaurantToReviews < ActiveRecord::Migration[7.0]
  def change
    remove_column :reviews, :restaurant_id, :integer
    add_reference :reviews, :restaurant, null: false, foreign_key: true
  end
end
