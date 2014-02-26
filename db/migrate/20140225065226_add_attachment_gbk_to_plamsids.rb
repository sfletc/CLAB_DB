class AddAttachmentGbkToPlamsids < ActiveRecord::Migration
  def self.up
    change_table :plasmids do |t|
      t.attachment :gbk
    end
  end

  def self.down
    drop_attached_file :plasmids, :gbk
  end
end
