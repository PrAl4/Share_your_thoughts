class ThoughtsController < ApplicationController
  def index
    
  end
  
  def new
    
  end

  def create
    @thought = Thought.new(thought_params)
  end

  private def thought_params
    params.require(:thought).permit(:title, :body)
  end
end
