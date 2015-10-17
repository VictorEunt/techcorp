class CorpusEntry < ActiveRecord::Base
  has_one :document
  has_many :students, through: :document
  has_many :tech_classes, through: :students
  has_many :instructors, through: :tech_classes
  
  accepts_nested_attributes_for :document, :tech_classes, :instructors
  
  validates :note, presence: true
  validates_associated :document, :students, :tech_classes, :instructors
end
