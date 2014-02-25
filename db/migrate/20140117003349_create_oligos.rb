class CreateOligos < ActiveRecord::Migration
  def change
    create_table :oligos do |t|
      t.string :oligo_no
      t.string :name
      t.string :sequence
      t.string :tm
      t.string :descrip
      t.string :designer

      t.timestamps
    end
  end
end
