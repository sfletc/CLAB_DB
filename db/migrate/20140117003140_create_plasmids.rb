class CreatePlasmids < ActiveRecord::Migration
  def change
    create_table :plasmids do |t|
      t.string :ligation
      t.string :vec_backbone
      t.string :insert
      t.string :puqc
      t.string :descrip
      t.string :designer

      t.timestamps
    end
  end
end
