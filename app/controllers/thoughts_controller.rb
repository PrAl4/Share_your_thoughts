class ThoughtsController < ApplicationController
  def index
    @thought = Thought.all
  end
  
  def new
    
  end

  def create
    @thought = Thought.new(thought_params)

    @thought.save
    redirect_to @thought
  end

  private def thought_params
    params.require(:thought).permit(:title, :body)
  end

  def show 
    @thought = Thought.find(params[:id])
  end
end
