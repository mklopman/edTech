class AddRatedUserToRatings < ActiveRecord::Migration[5.1]
  def change
  	add_column :ratings, :rated_user, :integer
  end
end
