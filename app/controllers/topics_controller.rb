class TopicsController < ApplicationController
  def index
    @topics = Topic.all
    render json: @topics
  end

  def new
    @topic = Topic.new
    render json: @topic
  end

  def create
    topic = Topic.create topic_params
    render json: topic
  end

  def edit
    @topic = Topic.find params[:id]
    render json: @topic
  end

  def update
    topic = Topic.find params[:id]
    topic.update topic_params
    render json: topic
  end

  def show
    @topic = Topic.find params[:id]
      render json: @topics
  end

  def destroy
    topic = Topic.find params[:id]
    topic.destroy
    head :no_content, status: :ok
  end

  private
  def topic_params
    params.require(:topic).permit(:title, :image)
  end
end
