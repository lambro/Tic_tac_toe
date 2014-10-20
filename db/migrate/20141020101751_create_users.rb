class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.text :bio
      t.integer :wins
      t.integer :losses
      t.integer :draws
      t.text :profile_picture

      t.timestamps
    end
  end
end
