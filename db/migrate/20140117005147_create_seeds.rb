class CreateSeeds < ActiveRecord::Migration
  def change
    create_table :seeds do |t|
      t.string :tube_no
      t.string :seed_col_date
      t.string :par_tube
      t.string :genotype
      t.string :descrip
      t.string :sourced_by
      t.string :GMO

      t.timestamps
    end
  end
end
