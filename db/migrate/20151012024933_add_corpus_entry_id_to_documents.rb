class AddCorpusEntryIdToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :corpus_entry_id, :integer
    add_index :documents, :corpus_entry_id
  end
end
