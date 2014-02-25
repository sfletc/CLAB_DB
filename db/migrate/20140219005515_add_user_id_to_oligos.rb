class AddUserIdToOligos < ActiveRecord::Migration
  def change
    add_column :oligos, :user_id, :integer
  end
end
