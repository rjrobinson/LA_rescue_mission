class AnswersController < ApplicationController


###################
  #METHOD / ROUTES
###################
  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.create(answer_params)
    redirect_to question_path(@question)

  end




############
  #METHODS
############


private

  # this is so that people cant break in and hack your stuff. follow the format!

  def answer_params
    params.require(:answer).permit(:description)
  end
end

