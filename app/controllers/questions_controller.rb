class QuestionsController < ApplicationController
    
    def index
        @questions =  Question.all 
    end
    
    
    def new
        @question = Question.new
    end
    
    def create
        @question = Question.new(question_params)
        
        if @question.save
            redirect_to @question
        else
            render :new, status: :unprocessable_entity
            flash[:message] = "Try Again"
        end
    end

    def question_params
        params.require(:question).permit( :question_number, :question_content, :correct_answer, :option_content_one, 
        :option_content_two, :option_content_three, :option_content_four, :quiz_id )
    end

end
