class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.text :address
      t.string :phone
      t.string :website
      t.text :company

      t.timestamps null: false
    end
    add_index :users, :name
  end
end
