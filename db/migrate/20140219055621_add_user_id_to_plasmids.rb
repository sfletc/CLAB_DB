class AddUserIdToPlasmids < ActiveRecord::Migration
  def change
  	add_column :plasmids, :user_id, :integer
  end
end
