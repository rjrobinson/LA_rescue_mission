class QuestionsController < ApplicationController

  def index
    @questions = Question.all.order(updated_at: :desc)
  end


  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      redirect_to questions_path
    else
      render 'new'
    end
  end

  private


  # this is so that people cant break in and hack your stuff. follow the format!
  def question_params
    params.require(:question).permit(:title, :description)
  end
end
