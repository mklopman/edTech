class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.belongs_to :user, index: true
      t.string :title
      t.string :comment
      t.integer :rating

      t.timestamps
    end
  end
end
