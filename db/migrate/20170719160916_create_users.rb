class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone_num
      t.string :email
      t.string :skype
      t.string :whatsapp
      t.string :facetime
      t.string :password_digest

      t.timestamps
    end
  end
end
