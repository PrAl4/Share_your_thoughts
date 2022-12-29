class PagesController < ApplicationController
  
  def your_home
    @heading = 'Это твой дом'
    @about = 'Здесь ты можешь чувствовать себя в безопасности'
  end
end
