class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    question = Question.create question_params
    redirect_to question
  end

  def edit
  end

  def show
    @question = Question.find params[:id]
  end

  private
  def question_params
    params.require(:question).permit(:content, :topic_id)
  end
end
