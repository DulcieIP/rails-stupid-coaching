class QuestionsController < ApplicationController

  def ask; end

  def answer
    # The controller will need to read the question from params
    @question = params[:question]
    #compute an instance variable @answer for the view to display.
    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question.include?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
