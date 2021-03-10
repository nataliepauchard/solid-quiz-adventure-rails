class AnswersController < ApplicationController
  def index
    @answers = Answer.all
    # render json: @answers
  end

  def new
    @answer = Answer.new
    # render json: @answer
  end

  def create
    answer = Answer.create answer_params
    redirect_to answer
    # render json: answer
  end

  def edit
  end

  def show
    @answer = Answer.find params[:id]
    render json: @answers
  end

  def destroy
    answer = Answer.find params[:id]
    answer.destroy
    redirect_to question_path
  end

  private
  def answer_params
    params.require(:answer).permit(:content, :topic_id)
  end
end
