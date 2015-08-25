class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :bikes, :type, :bike_category
  end
end
