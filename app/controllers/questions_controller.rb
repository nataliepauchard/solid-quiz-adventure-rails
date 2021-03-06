class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
  end

  def edit
  end

  def show
  end
end
