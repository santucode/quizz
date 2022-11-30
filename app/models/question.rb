class Question < ApplicationRecord
  has_many :options
  has_many :given_answers
  belongs_to :quiz
end
