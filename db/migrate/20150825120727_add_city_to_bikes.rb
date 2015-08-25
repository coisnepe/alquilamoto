class AddCityToBikes < ActiveRecord::Migration
  def change
    add_column :bikes, :city, :string
  end
end
