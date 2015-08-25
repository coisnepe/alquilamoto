class AddDateBirthToUsers < ActiveRecord::Migration
  def change
    add_column :users, :date_birth, :date
  end
end
