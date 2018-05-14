class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @question = params[:question]
    @great_response = "Great!"
    @silly_response = "Silly question, get dressed and go to work!"
    @default_reponse = "I don't care, get dressed and go to work!"

    if @question == "I am going to work" && @question
      @response = @great_response
    elsif @question[-1] == "?"
      @response = @silly_response
    else
      @response = @default_reponse
    end
  end

end
