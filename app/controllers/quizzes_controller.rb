class QuizzesController < ApplicationController
    before_action :authenticate_user!
    def index
        @quizzes = Quiz.all
    end

    def show
        @quiz=  Quiz.find(params[:id])
    end





    def create
        @given = GivenAnswer.new(given_params)
        if @given.save
            redirect_to @question
        else
            render :new, status: :unprocessable_entity
            flash[:message] = "Try Again"
        end
    end

    def given_params
        params.require(:question).permit(:given_option_number, :user_id, :question_id)
    end


end
