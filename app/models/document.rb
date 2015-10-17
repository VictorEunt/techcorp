class Document < ActiveRecord::Base
  belongs_to :corpus_entry
  belongs_to :student
end
