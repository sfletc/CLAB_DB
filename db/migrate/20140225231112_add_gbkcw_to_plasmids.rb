class AddGbkcwToPlasmids < ActiveRecord::Migration
  def change
    add_column :plasmids, :gbkcw, :string
  end
end
