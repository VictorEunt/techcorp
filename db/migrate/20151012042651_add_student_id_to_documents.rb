class AddStudentIdToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :student_id, :integer
    add_index :documents, :student_id
  end
end
