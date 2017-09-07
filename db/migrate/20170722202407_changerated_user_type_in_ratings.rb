class ChangeratedUserTypeInRatings < ActiveRecord::Migration[5.1]
  def change
  	change_column :ratings, :rated_user, :string

  end
end
