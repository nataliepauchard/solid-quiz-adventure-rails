class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    # render json: @questions
  end

  def new
    @question = Question.new
    # render json: @question
  end

  def create
    question = Question.create question_params
    redirect_to question
    # render json: question
  end

  def edit
  end

  def update
    question = Question.find params[:id]
    question.update question_params
    redirect_to question
  end

  def show
    @question = Question.find params[:id]
    # render json: @questions
  end

  def destroy
    question = Question.find params[:id]
    question.destroy
    redirect_to questions_path
  end

  private
  def question_params
    params.require(:question).permit(:content, :topic_id)
  end
end
