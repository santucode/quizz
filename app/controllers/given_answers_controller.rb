class GivenAnswersController < ApplicationController

    def index
        @given = GivenAnswer.all
        @answers = current_user.given_answers
    end
    
    def new 
        @given = GivenAnswer.new
    end
    

    def create
        @given = GivenAnswer.new(given_params)
        if @given.save
            
        else
            render :new, status: :unprocessable_entity
            flash[:message] = "Try Again"
        end
    end

    def given_params
        params.permit(:question_id, :user_id, :quiz_id, :given_option_number)
    end


end
