class Quiz < ApplicationRecord
    has_many :questions
    has_many :given_answers

    

end
