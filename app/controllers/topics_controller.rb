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
  end

  def show
    @topic = Topic.find params[:id]
  end

  private
  def topic_params
    params.require(:topic).permit(:title, :image)
  end
end
