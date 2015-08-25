class AddDateDriverLicenseToUsers < ActiveRecord::Migration
  def change
    add_column :users, :date_driver_licence, :date
  end
end
