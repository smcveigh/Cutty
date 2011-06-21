class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :users
    add_column :cuts, :user_id, :integer
  end
end
