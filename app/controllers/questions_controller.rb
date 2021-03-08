class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    render json: @questions
  end

  def new
    @question = Question.new
    render json: @question
  end

  def create
    question = Question.create question_params
    render json: question
  end

  def edit
  end

  def show
    @question = Question.find params[:id]
    render json: @questions
  end

  private
  def question_params
    params.require(:question).permit(:content, :topic_id)
  end
end
