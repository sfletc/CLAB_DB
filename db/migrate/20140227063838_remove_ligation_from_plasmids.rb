class RemoveLigationFromPlasmids < ActiveRecord::Migration
  def change
  	remove_column :plasmids, :ligation
  end
end
