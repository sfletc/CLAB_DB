class AddLigationToPlasmids < ActiveRecord::Migration
  def change
  	add_column :plasmids, :ligation, :integer
  end
end
