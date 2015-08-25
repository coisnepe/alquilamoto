class AddAttachmentPictureToBikes < ActiveRecord::Migration
  def self.up
    change_table :bikes do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :bikes, :picture
  end
end
