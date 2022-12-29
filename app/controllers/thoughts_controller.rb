class ThoughtsController < ApplicationController
  def index
    @thought = Thought.all
  end
  
  def new
    @thought = Thought.new
  end

  def create
    @thought = Thought.new(thought_params)

    if(@thought.save)
      redirect_to @thought
    else
      render 'new'
    end
  end

  private def thought_params
    params.require(:thought).permit(:title, :body)
  end

  def show 
    @thought = Thought.find(params[:id])
  end
end
