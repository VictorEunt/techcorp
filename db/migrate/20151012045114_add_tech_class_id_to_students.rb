class AddTechClassIdToStudents < ActiveRecord::Migration
  def change
    add_column :students, :tech_class_id, :integer
    add_index :students, :tech_class_id
  end
end
