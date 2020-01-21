class Question < ApplicationRecord
  has_many :answers, dependent: :destroy
  validates :user_question, presence: true
end
