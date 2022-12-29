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

  def update
    @thought = Thought.find(params[:id])
    
     if(@thought.update(thought_params))
      redirect_to @thought
    else
      render 'edit'
    end
  end 
  
  private def thought_params
    params.require(:thought).permit(:title, :body)
  end

  def show 
    @thought = Thought.find(params[:id])
  end

  def edit
    @thought = Thought.find(params[:id])
  end

  def destroy
    @thought = Thought.find(params[:id])
    @thought.destroy
    redirect_to thoughts_path
  end
  
end
