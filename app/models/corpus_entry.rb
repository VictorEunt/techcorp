class CorpusEntry < ActiveRecord::Base
  has_one :document
  has_many :students, through: :documents
  has_many :tech_classes, through: :students
  has_many :instructors, through: :tech_classes
end
