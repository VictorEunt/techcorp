class CreateTechClasses < ActiveRecord::Migration
  def change
    create_table :tech_classes do |t|
      t.integer :number
      t.integer :section
      t.string :day
      t.string :time
      t.integer :year

      t.timestamps
    end
  end
end
