class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end

  def create
    topic = Topic.create topic_params
    redirect_to topic_path(topic.id)
  end

  def edit
    @topic = Topic.find params[:id]
  end

  def update
    topic = Topic.find params[:id]
    topic.update topic_params
    redirect_to topic
  end

  def show
    @topic = Topic.find params[:id]
  end

  def destroy
    topic = Topic.find params[:id]
    topic.destroy
    redirect_to topics_path
  end

  private
  def topic_params
    params.require(:topic).permit(:title, :image)
  end
end
