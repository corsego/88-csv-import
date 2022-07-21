class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :name
      t.string :surname
      t.string :phone
      t.string :preferences

      t.timestamps
    end
  end
end
