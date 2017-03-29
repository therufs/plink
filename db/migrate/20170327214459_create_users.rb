class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :login
      t.string :password_digest
      t.string :displayname
      t.decimal :balance, precision: 5, scale: 2
      t.string :auth_token

      t.timestamps
    end
    add_index :users, :auth_token, unique: true
    add_index :users, :login, unique: true
  end
end
