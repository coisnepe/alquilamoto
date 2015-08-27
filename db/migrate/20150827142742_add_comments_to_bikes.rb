class AddCommentsToBikes < ActiveRecord::Migration
  def change
    add_column :bikes, :comment, :text
  end
end
