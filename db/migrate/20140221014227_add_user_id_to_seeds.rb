class AddUserIdToSeeds < ActiveRecord::Migration
  def change
  	add_column :seeds, :user_id, :integer
  end
end
