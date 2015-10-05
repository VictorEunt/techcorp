class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :level
      t.string :major
      t.string :gender
      t.integer :age
      t.string :language
      t.string :ethnicity

      t.timestamps
    end
  end
end
