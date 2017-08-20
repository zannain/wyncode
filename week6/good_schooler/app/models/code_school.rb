class CodeSchool < ApplicationRecord
  has_many :students, class_name: 'User'
  has_many :projects, through: :students
end

