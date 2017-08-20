class User < ApplicationRecord
    belongs_to :course
    validates :email, :name, presence: true
    validates :email, uniqueness: true
end
