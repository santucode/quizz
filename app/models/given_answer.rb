class GivenAnswer < ApplicationRecord
  belongs_to :question
  belongs_to :user
  belongs_to :quiz

  
end
